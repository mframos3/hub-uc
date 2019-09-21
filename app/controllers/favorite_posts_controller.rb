class FavoritePostsController < ApplicationController
    before_action :set_post

    def create
      if Favorite.create(favorited: @post, user: current_user)
        redirect_to @post
      else
        redirect_to @post, alert: 'Algo salió mal...'
      end
    end

    def destroy
      Favorite.where(favorited_id: @post.id, user_id: current_user.id).first.destroy
      redirect_to @post
    end

    private

    def set_post
      @post = Post.find(params[:post_id] || params[:id])
    end
end
