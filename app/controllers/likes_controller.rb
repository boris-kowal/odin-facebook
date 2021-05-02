class LikesController < ApplicationController

  def new
  end

  def create
    @post = Post.find_by_id(params[:post_id])
    @like = Like.create(user_id: current_user.id, post_id: @post.id)
    redirect_to @post
  end
end
