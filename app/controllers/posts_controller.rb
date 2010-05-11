class PostsController < ApplicationController
  respond_to :html
  respond_to :rss, :only => [:index]

  def index
     respond_with(@posts = Post.all)
  end
  
  def new
    @post = Post.new
  end

  def create
    @post = Post.new params[:post]
    if @post.save
      flash[:notice] = "post was created"
      respond_to do |wants|
        wants.html { redirect_to posts_path }
        wants.js
      end
    end
  end

  def show
    @post = Post.find params[:id]
    @comment = @post.comments.build
  end
end
