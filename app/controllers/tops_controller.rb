class TopsController < ApplicationController

  def index
    @posts = Post.includes(:user).order('created_at DESC').limit(5)
  end

  def many
    @posts = Post.includes(:user).order('created_at DESC')
  end
end
