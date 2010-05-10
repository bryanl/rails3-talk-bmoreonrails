class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new params[:post]
    if @post.save
      redirect_to posts_path
      flash[:notice] = "post was created"
    end
  end
end
