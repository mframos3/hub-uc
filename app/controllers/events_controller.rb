class EventsController < ApplicationController
  load_and_authorize_resource
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /events
  # GET /events.json
  def index
    @mode = params[:option]
    if current_user
      if @mode == 'Created'
        @events = Event.where(:user_id => current_user.id).order(created_at: :desc)
      elsif @mode == 'Joined'
        @events = current_user.events.order(created_at: :desc)
      end
    end
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @origin = 'room'
    if params[:origin]
      @origin = params[:origin]
    end
    @event = Event.find(params[:id])
    @members = @event.users
    if current_user
      @is_moderator = ModeratorRole.exists?(user_id: current_user.id, course_id: @event.course_id)
      if current_user.id == @event.user_id
        @is_member = true
      else
        @is_member = UserEvent.exists?(user_id: current_user.id, event_id: @event.id)
      end
      allowed = false
      denied = 'Acción Inválida!'
      if @event.e_type == 'Study'
        allowed = UserCourse.exists?(user_id: current_user.id, course_id: @event.course_id)
        unless allowed
          denied = 'Debes inscribirte primero en el curso del evento!'
        end
      elsif @event.e_type == 'Search'
        allowed = UserCourse.exists?(user_id: current_user.id, course_id: @event.course_id, role: 'Alumno')
        unless allowed
          denied = 'Debes inscribirte como alumno primero en el curso del evento!'
        end
      end
      if params[:join] && !@is_member
        if allowed
          if @event.e_type == 'Study' && (@members.length + 2 <= @event.max_amount)
            current_user.events << @event
            notice = 'Te has unido al evento!'
          elsif @event.e_type != 'Study'
            current_user.events << @event
            notice = 'Te has unido al evento!'
          else
            notice = 'No se permiten más miembros en este grupo de estudio!'
          end
        else
          notice = denied
        end
        respond_to do |format|
          format.html { redirect_to event_url(:id => @event, :origin => @origin), notice: notice }
          format.json { head :no_content }
        end
      elsif params[:unjoin] && @is_member
        if @event.user_id != current_user.id
          @relation = UserEvent.find_by(user_id: current_user.id, event_id: @event.id)
          @relation.delete
          @relation.destroy
          respond_to do |format|
            format.html { redirect_to event_url(:id => @event.id, :origin => @origin),
            notice: 'Te has salido del evento!' }
            format.json { head :no_content }
          end
        end
      end
    end
  end

  # GET /events/new
  def new
    Time.zone = "Santiago"
    @e_type = params[:category]
    @current_room = params[:current_room]
    @event = Event.new
    @options = []
    if @e_type == "Offer"
      teacher_courses = UserCourse.select(:course_id).where(user_id: current_user.id).where(role: 'Profesor')
      courses = Course.where(:id => teacher_courses)
      courses.each {|course| @options << [course.initials + " - " + course.name, course.id] }
    elsif @e_type == "Search"
      student_courses = UserCourse.select(:course_id).where(user_id: current_user.id).where(role: 'Alumno')
      courses = Course.where(:id => student_courses)
      courses.each {|course| @options << [course.initials + " - " + course.name, course.id] }
    elsif @e_type == "Study"
      my_courses = UserCourse.select(:course_id).where(user_id: current_user.id)
      courses = Course.where(:id => my_courses)
      courses.each {|course| @options << [course.initials + " - " + course.name, course.id] }
    else
      Course.all.each {|course| @options << [course.initials + " - " + course.name, course.id] }
    end
    @options.sort_by! {|m| m[0] }
    @creating = true
  end

  # GET /events/1/edit
  def edit
    Time.zone = "Santiago"
    @event = Event.find(params[:id])
    @e_type = 'Edit'
    @creating = false
  end

  # room /events
  # room /events.json
  def create
    @current_room = event_params[:room_id]
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to event_path(@event),
         notice: 'El Evento ha sido creado correctamente!' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    @creating = false
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to event_path(@event),
         notice: 'El Evento ha sido actualizado correctamente!' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @origin = 'room'
    if params[:origin] && ['Created', 'Joined'].include?(params[:origin])
      @origin = params[:origin]
      @event.destroy
      respond_to do |format|
        format.html { redirect_to events_path(:option => @origin),
         notice: 'El Evento ha sido eliminado correctamente!' }
        format.json { head :no_content }
      end
    else
      @event.destroy
      respond_to do |format|
        format.html { redirect_to room_path(:id => @event.room_id),
         notice: 'El Evento ha sido eliminado correctamente!' }
        format.json { head :no_content }
      end
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:name, :e_type, :price, :f_date, :max_amount, :user_id, :course_id, :room_id)
    end
end
