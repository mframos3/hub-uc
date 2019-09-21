class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  # GET /comments
  # GET /comments.json
  def index
    @comments = Comment.all
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
    @comment = @commentable.comments.build
  end

  # GET /comments/new
  def new
    @comment = Comment.new
  end

  # GET /comments/1/edit
  def edit
    @comment = @commentable.comments.find(params[:id])
  end

  # POST /comments
  # POST /comments.json
  def create
    @comment = @commentable.comments.new(comment_params)
    @comment.user_id = current_user.id
    @comment.user = current_user
    respond_to do |format|
      if @comment.save
        format.html { redirect_to @commentable, notice: "El Comentario ha sido posteado correctamente!" }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { redirect_back(fallback_location: root_path) }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
    @comment = @commentable.comments.find(params[:id])
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to @comment.commentable, notice: 'El Comentario ha sido actualizado correctamente!' }
        format.json { render :show, status: :ok, location: @commentable }
      else
        format.html { render :edit }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment.destroy
    redirect_back(fallback_location: root_path)
    # respond_to do |format|
    #  format.html { notice: 'Comment was successfully destroyed.' } # redirect_to comments_url,
    #  format.json { head :no_content }
    # end
  end

  def upvote
    @comment = @commentable.comments.find(params[:id])
    if current_user.voted_up_on? @comment
      @comment.unvote_by current_user
    else
      @comment.upvote_by current_user
    end
    redirect_back(fallback_location: root_path)
  end

  def downvote
    @comment = @commentable.comments.find(params[:id])
    if current_user.voted_down_on? @comment
      @comment.unvote_by current_user
    else
      @comment.downvote_by current_user
    end
    redirect_back(fallback_location: root_path)
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:body, :user_id, :commentable_id, :commentable_type)
    end
end
