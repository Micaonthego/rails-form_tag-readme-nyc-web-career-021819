class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    render :new
  end

  def create
    @post = Post.create(post_params)
    redirect_to '/posts'
  end

  private

  def post_params
    params.require(:post).permit(:title, :description)
  end

end
