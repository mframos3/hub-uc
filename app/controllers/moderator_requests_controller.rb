class ModeratorRequestsController < ApplicationController
  before_action :set_moderator_request, only: [:show, :edit, :update, :destroy]

  # GET /moderator_requests
  # GET /moderator_requests.json
  def index
    @moderator_requests = ModeratorRequest.all.where(status: "En revisión")
    @my_requests = ModeratorRequest.where(user_id: current_user.id).order(created_at: :desc)
    @my_moderator_courses = ModeratorRole.select("course_id").where(user_id: current_user.id)
    @request_for_courses = ModeratorRequest.where(status: "En revisión").where(:course_id => @my_moderator_courses)
  end

  # GET /moderator_requests/1
  # GET /moderator_requests/1.json
  def show
    @moderator_request = ModeratorRequest.find_by_id(params[:id])
  end

  # GET /moderator_requests/new
  def new
    @moderator_request = ModeratorRequest.new
    @course = Course.find(params[:course_id])
    @creating = true
  end

  # GET /moderator_requests/1/edit
  def edit
    @creating = false
    @options = %w[Aceptar Rechazar]
  end

  # POST /moderator_requests
  # POST /moderator_requests.json
  def create
    @moderator_request = ModeratorRequest.new(moderator_request_params)
    @course = Course.all
    respond_to do |format|
      if @moderator_request.save
        format.html { redirect_to @moderator_request,
         notice: 'La Solicitud de Moderador ha sido creada correctamente!' }
        format.json { render :show, status: :created, location: @moderator_request }
      else
        format.html { render :new }
        format.json { render json: @moderator_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /moderator_requests/1
  # PATCH/PUT /moderator_requests/1.json
  def update
    respond_to do |format|
      if @moderator_request.update(moderator_request_params)
        if @moderator_request.status == 'Aceptar'
          @moderator_request.update(status: 'Aceptado')
          @user_accepted = User.find(@moderator_request.user_id)
          unless @user_accepted.has_role? :moderator
            @user_accepted.add_role('moderator')
          end
          @new_role = ModeratorRole.create(user_id: @user_accepted.id, course_id: @moderator_request.course_id)
        else
          @moderator_request.update(status: 'Rechazado')
        end
        format.html { redirect_to @moderator_request,
         notice: 'La Solicitud de Moderador ha sido actualizada correctamente!' }
        format.json { render :show, status: :ok, location: @moderator_request }
      else
        format.html { render :edit }
        format.json { render json: @moderator_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /moderator_requests/1
  # DELETE /moderator_requests/1.json
  def destroy
    @moderator_request.destroy
    respond_to do |format|
      format.html { redirect_to moderator_requests_url,
       notice: 'La Solicitud de Moderador ha sido eliminada correctamente!' }
      format.json { head :no_content }
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_moderator_request
      @moderator_request = ModeratorRequest.find(params[:id])
    end

    def moderator_request_params
      params.require(:moderator_request).permit(:request, :user_id, :course_id, :status)
    end
end
