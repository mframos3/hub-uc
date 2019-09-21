class RoomsController < ApplicationController
  load_and_authorize_resource
  before_action :set_room, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /rooms
  # GET /rooms.json
  def index
    @rooms = Room.all
  end

  # GET /rooms/1
  # GET /rooms/1.json
  def show
    @origin = 'location'
    if params[:origin]
      @origin = params[:origin]
    end
    @events = @room.events.order(created_at: :desc)
  end

  # GET /rooms/new
  def new
    @room = Room.new
    @location = params[:current_location]
    @editing = false
  end

  # GET /rooms/1/edit
  def edit
    @location = @room.location_id
    @editing = true
  end

  # POST /rooms
  # POST /rooms.json
  def create
    @room = Room.new(room_params)

    respond_to do |format|
      if @room.save
        format.html { redirect_to @room, notice: 'La Sala ha sido creada correctamente!' }
        format.json { render :show, status: :created, location: @room }
      else
        format.html { render :new }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rooms/1
  # PATCH/PUT /rooms/1.json
  def update
    respond_to do |format|
      if @room.update(room_params)
        format.html { redirect_to @room, notice: 'La Sala ha sido actualizada correctamente!' }
        format.json { render :show, status: :ok, location: @room }
      else
        format.html { render :edit }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rooms/1
  # DELETE /rooms/1.json
  def destroy
    @room.destroy
    respond_to do |format|
      format.html { redirect_to location_path(@room.location), notice: 'La Sala ha sido eliminada correctamente!' }
      format.json { head :no_content }
    end
  end

  def upvote_availability
    @room = Room.find(params[:id])
    if current_user.voted_up_on? @room, vote_scope: 'availability'
      @room.unvote_by current_user, vote_scope: 'availability'
    else
      @room.upvote_by current_user, vote_scope: 'availability'
    end
    redirect_back(fallback_location: root_path)
  end

  def downvote_availability
    @room = Room.find(params[:id])
    if current_user.voted_down_on? @room, vote_scope: 'availability'
      @room.unvote_by current_user, vote_scope: 'availability'
    else
      @room.downvote_by current_user, vote_scope: 'availability'
    end
    redirect_back(fallback_location: root_path)
  end

  def upvote_noise
    @room = Room.find(params[:id])
    if current_user.voted_up_on? @room, vote_scope: 'noise'
      @room.unvote_by current_user, vote_scope: 'noise'
    else
      @room.upvote_by current_user, vote_scope: 'noise'
    end
    redirect_back(fallback_location: root_path)
  end

  def downvote_noise
    @room = Room.find(params[:id])
    if current_user.voted_down_on? @room, vote_scope: 'noise'
      @room.unvote_by current_user, vote_scope: 'noise'
    else
      @room.downvote_by current_user, vote_scope: 'noise'
    end
    redirect_back(fallback_location: root_path)
  end

  def upvote_plugs
    @room = Room.find(params[:id])
    if current_user.voted_up_on? @room, vote_scope: 'plugs'
      @room.unvote_by current_user, vote_scope: 'plugs'
    else
      @room.upvote_by current_user, vote_scope: 'plugs'
    end
    redirect_back(fallback_location: root_path)
  end

  def downvote_plugs
    @room = Room.find(params[:id])
    if current_user.voted_down_on? @room, vote_scope: 'plugs'
      @room.unvote_by current_user, vote_scope: 'plugs'
    else
      @room.downvote_by current_user, vote_scope: 'plugs'
    end
    redirect_back(fallback_location: root_path)
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_room
      @room = Room.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def room_params
      params.require(:room).permit(:name, :ubication, :location_id, :noise, :sockets, :availability)
    end
end
