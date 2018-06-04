class SearchController < ApplicationController
  def index
    if params[:search]
      @posts = Post.where('topic LIKE ?', "%#{params[:search]}%")
      @users = User.where('username LIKE ?', "%#{params[:search]}%")
    else
      @posts = Post.all
      @users = User.all
    end
  end

  private

  def post_params
    params.permit(:search)
  end
end
