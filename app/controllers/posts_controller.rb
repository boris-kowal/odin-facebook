class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by_id(params[:id])
  end

  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      flash[:notice] = "Post successfully created!"
      redirect_to @post
    else
      flash[:alert] = "There is a mistake in your post!"
      render :new
    end
  end

  def edit

  end

  def update
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end

end
