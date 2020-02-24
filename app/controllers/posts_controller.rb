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

  def edit
    @post = Post.find(params[:id])
    @images = @post.images
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to root_path
  end

  private
    def post_params
      params.require(:post).permit(:content, :place_id, :player_id, :opponent_id, images_attributes: [:image, :_destroy, :id]).merge(user: current_user)
    end
end
