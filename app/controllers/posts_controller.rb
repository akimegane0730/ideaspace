class PostsController < ApplicationController

  def new
    @post = Post.new
    @post.images.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to :root
    else
      render action: :new
    end
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments.includes(:user)
  end

  def edit
    @post = Post.find(params[:id])
    @images = @post.images
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to root_path
  end

  def destroy
    @post = Post.find(params[:id])
    redirect_to root_path
  end

  private
    def post_params
      params.require(:post).permit(:content, :place_id, :player_id, :opponent_id, images_attributes: [:image, :_destroy, :id]).merge(user_id: current_user.id)
    end
end
