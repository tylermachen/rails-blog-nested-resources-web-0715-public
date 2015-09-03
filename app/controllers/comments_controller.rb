class CommentsController < ApplicationController
  def create
    @comment = Comment.create(params[:comment])
    redirect_to post
  end

  private

  def comment_params
      params.require(:comment).permit(:content, :post_id)
  end
end
