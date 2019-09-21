class CoursesController < ApplicationController
  load_and_authorize_resource
  before_action :set_course, only: %i[:show :edit :update :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /courses
  # GET /courses.json
  def index
    @options = []
    @role = %w[Alumno Profesor]
    Course.all.each {|course| @options << [course.initials + " - " + course.name, course.id] }
    @options.sort_by! {|m| m[0] }
    @selected = params[:selected]
    @role_selected = params[:role]
    if !@selected.blank? && !@role_selected.blank?
        @selected_course = Course.find(@selected)
        if params[:join]
          if !current_user.courses.exists? @selected
            current_user.courses << @selected_course
            @join_item = UserCourse.find_by(user_id: current_user.id, course_id: @selected_course.id)
            @join_item.update(role: @role_selected)
            @joined = "La inscripción se ha realizado con éxito!"
          else
            @joined = "Ya estás inscrito en el curso seleccionado!"
          end
        end
    else
      @joined = "Selecciona un curso y tipo de inscripción"
    end
    if current_user
      if params[:option]
        @mode = params[:option]
      else
        @mode = 'All'
      end
      if @mode == 'All'
        @courses = Course.all.order(:name)
      elsif @mode == 'Joined'
        @courses = current_user.courses.order(:name)
        @inscriptions_s = []
        @inscriptions_t = []
        @courses.each do |course|
          ins_type = UserCourse.find_by(user_id: current_user.id, course_id: course.id).role
          if ins_type == 'Alumno'
            @inscriptions_s << course
          else
            @inscriptions_t << course
          end
        end
      end
    else
      @mode = 'All'
      @courses = Course.all.order(:name)
    end
    if @mode == 'All' && params[:search]
      @courses = Course.search(params[:search]).order(:name)
    end
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
    if current_user
      @is_moderator = ModeratorRole.exists?(user_id: current_user.id, course_id: @course.id)
    end
    @origin = 'All'
    if params[:origin]
      @origin = params[:origin]
      if @origin == 'profile'
        @profile = params[:profile]
      end
    end
    @course = Course.find(params[:id])
    @publications = @course.posts.order(created_at: :desc)
    if params[:unjoin]
      @relation = UserCourse.find_by(user_id: current_user.id, course_id: @course.id)
      @relation.delete
      @relation.destroy
      if @is_moderator
        @moderator_role = ModeratorRole.find_by(user_id: current_user.id, course_id: @course.id)
        @moderator_role.delete
        @moderator_role.destroy
        unless ModeratorRole.exists?(user_id: current_user.id)
          current_user.remove_role :moderator
        end
      end
      respond_to do |format|
        format.html { redirect_to course_url(:id => @course.id, :origin => @origin),
         notice: 'La inscripción del curso ha sido cancelada correctamente!' }
        format.json { head :no_content }
      end
    end
  end

  # GET /courses/new
  def new
    @course = Course.new
    @editing = false
  end

  # GET /courses/1/edit
  def edit
    @editing = true
  end

  # POST /courses
  # POST /courses.json
  def create
    @course = Course.new(course_params)

    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: 'El Curso ha sido creado correctamente!' }
        format.json { render :show, status: :created, location: @course }
      else
        format.html { render :new }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /courses/1
  # PATCH/PUT /courses/1.json
  def update
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to @course, notice: 'El Curso ha sido actualizado correctamente!' }
        format.json { render :show, status: :ok, location: @course }
      else
        format.html { render :edit }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @origin = 'All'
    if params[:origin] && ['All', 'Joined'].include?(params[:origin])
      @origin = params[:origin]
    end
    @course.destroy
    respond_to do |format|
      format.html { redirect_to courses_url(:option => @origin), notice: 'El Curso ha sido eliminado correctamente!' }
      format.json { head :no_content }
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_params
      params.require(:course).permit(:name, :initials)
    end
end
