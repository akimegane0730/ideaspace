class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @posts = Post.where(user_id: @user.id)
  end


  def edit
    @user = User.find(params[:id])
  end

  def update
    @posts = Post.where(user_id: current_user.id)
    @user = User.find(params[:id])
    @user.update_attributes(user_params)
    render action: :show
  end


  private
    def user_params
      params.require(:user).permit(:name, :player_id)
    end
end
