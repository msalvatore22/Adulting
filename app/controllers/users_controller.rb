class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find_by(params[:id])

    @user = current_user

    @user_score = @user.score

    @user = current_user
  end

  private

  def score_params
    params.require(:score).permit(:finance, :housing, :cars, :travel, :technology, :lifestyle, :user_id)
  end
end
