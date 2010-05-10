class CommentsController < ApplicationController
  def create
    post = Post.find(params[:post_id])
    @comment = post.comments.build params[:comment]
    if @comment.save
      redirect_to [post]
    end
  end
end
