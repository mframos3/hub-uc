class MessagesController < ApplicationController
  before_action :set_message, only: [:show, :edit, :update, :destroy]

  # GET /messages
  # GET /messages.json
  def index
    if params[:send]
      @title = "Enviados"
      @messages = Message.where(sender_id: current_user.id).order(created_at: :desc)
    else
      @title = "Recibidos"
      @messages = Message.where(receiver_id: current_user.id).order(created_at: :desc)
    end
  end

  # GET /messages/1
  # GET /messages/1.json
  def show
    @sender = User.find(@message.sender_id)
    @receiver = User.find(@message.receiver_id)
  end

  # GET /messages/new
  def new
    @origin = 'index'
    if params[:origin]
      @origin = params[:origin]
      if @origin == 'profile'
        @receiver = User.find(params[:receiver_id])
      end
    end
    @message = Message.new
  end

  # GET /messages/1/edit
  def edit
  end

  # POST /messages
  # POST /messages.json
  def create
    @message = Message.new(message_params)
    if User.exists?(email: message_params[:receiver_id])
      @warning = ""
      if @message.content.length < 256
        @maximum = ""
        @message.update(receiver_id: User.find_by(email: message_params[:receiver_id]).id)
        respond_to do |format|
          if @message.save
            format.html { redirect_to @message, notice: 'El Mensaje ha sido enviado correctamente!' }
            format.json { render :show, status: :created, location: @message }
          else
            format.html { render :new }
            format.json { render json: @message.errors, status: :unprocessable_entity }
          end
        end
      else
        @maximum = "El Mensaje no puede exceder los 255 caracteres!"
        respond_to do |format|
            format.html { render :new, notice: "El Mensaje excede los 255 caracteres!" }
            format.json { render json: @message.errors, status: :unprocessable_entity }
        end
      end
    else
      @warning = "Debes ingresar un email de destino válido!"
      respond_to do |format|
          format.html { render :new, notice: "Debes ingresar un email de destino válido!" }
          format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /messages/1
  # PATCH/PUT /messages/1.json
  def update
    respond_to do |format|
      if @message.update(message_params)
        format.html { redirect_to @message, notice: 'El Mensaje ha sido actualizado correctamente!' }
        format.json { render :show, status: :ok, location: @message }
      else
        format.html { render :edit }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /messages/1
  # DELETE /messages/1.json
  def destroy
    @message.destroy
    respond_to do |format|
      format.html { redirect_to messages_url, notice: 'El Mensaje ha sido eliminado correctamente!' }
      format.json { head :no_content }
    end
  end

  private

    def set_message
      @message = Message.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def message_params
      params.require(:message).permit(:title, :sender_id, :receiver_id, :content)
    end
end
