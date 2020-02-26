class CommentsController < ApplicationController
  before_action :authenticate_user!
  def create
    comment = Comment.create(comment_params)
    redirect_to "/posts/#{comment.post.id}"
  end

  
  def destroy
    @comment = Comment.find(params[:id])
    @post = @comment.post
    if @comment.destroy
      respond_to :js
    else
      flash[:alert] = "コメントの削除に失敗しました"
    end
  end
  

  private
    def comment_params
      params.require(:comment).permit(:comment, :post_id, :user_id).merge(user_id: current_user.id, post_id: params[:post_id])
    end
end
