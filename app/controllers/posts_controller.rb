class PostsController < ApplicationController
  load_and_authorize_resource
  before_action :set_post, only: %i[:show :edit :update :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @origin = 'course'
    if params[:origin]
      @origin = params[:origin]
      if @origin == 'profile'
        @profile = params[:profile]
      end
    end
    @post = Post.find_by_id(params[:id])
    if current_user
      @is_moderator = ModeratorRole.exists?(user_id: current_user.id, course_id: @post.course_id)
    end
  end

  # GET /posts/new
  def new
    @post = Post.new
    @course = Course.find(params[:course_id])
    @creating = true
  end

  # GET /posts/1/edit
  def edit
    @creating = false
    @is_moderator = ModeratorRole.exists?(user_id: current_user.id, course_id: @post.course_id)
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)
    @course = Course.all
    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'La Publicación ha sido creada correctamente!' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'La Publicación ha sido actualizada correctamente!' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to course_path(:id => @post.course_id),
       notice: 'La Publicación ha sido eliminada correctamente!' }
      format.json { head :no_content }
    end
  end

  def upvote
    @post = Post.find(params[:id])
    if current_user.voted_up_on? @post
      @post.unvote_by current_user
    else
      @post.upvote_by current_user
    end
    redirect_back(fallback_location: root_path)
  end

  def downvote
    @post = Post.find(params[:id])
    if current_user.voted_down_on? @post
      @post.unvote_by current_user
    else
      @post.downvote_by current_user
    end
    redirect_back(fallback_location: root_path)
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :course, :content, :description, :user_id, :course_id)
    end
end
