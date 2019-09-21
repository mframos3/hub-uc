class LocationsController < ApplicationController
  load_and_authorize_resource
  before_action :set_location, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /locations
  # GET /locations.json
  def index
    if params[:search]
      @locations = Location.search(params[:search]).order(:name)
    else
      @locations = Location.all.order(:name)
    end
  end

  # GET /locations/1
  # GET /locations/1.json
  def show
    @rooms = @location.rooms.order(:name)
  end

  # GET /locations/new
  def new
    @location = Location.new
    @editing = false
  end

  # GET /locations/1/edit
  def edit
    @editing = true
  end

  # POST /locations
  # POST /locations.json
  def create
    @location = Location.new(location_params)

    respond_to do |format|
      if @location.save
        format.html { redirect_to @location, notice: 'El Campus ha sido creado correctamente!' }
        format.json { render :show, status: :created, location: @location }
      else
        format.html { render :new }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /locations/1
  # PATCH/PUT /locations/1.json
  def update
    respond_to do |format|
      if @location.update(location_params)
        format.html { redirect_to @location, notice: 'El Campus ha sido actualizado correctamente!' }
        format.json { render :show, status: :ok, location: @location }
      else
        format.html { render :edit }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locations/1
  # DELETE /locations/1.json
  def destroy
    @location.destroy
    respond_to do |format|
      format.html { redirect_to locations_url, notice: 'El Campus ha sido eliminado correctamente!' }
      format.json { head :no_content }
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = Location.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def location_params
      params.require(:location).permit(:name, :ubication, :image)
    end
end
