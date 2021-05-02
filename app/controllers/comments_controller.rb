class CommentsController < ApplicationController

  def create
    @post = Post.find_by_id(params[:post_id])
    @comment = @post.comments.create(comment_params)
    redirect_to @post
  end

  def edit
  end

  private

  def comment_params
    params.require(:comment).permit(:user_id, :post_id, :body)
  end
end
