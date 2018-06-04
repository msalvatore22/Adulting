class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def show


    @user = current_user

    @user_score = @user.score

  end

  private

  def score_params
    params.require(:score).permit(:finance, :housing, :cars, :travel, :technology, :lifestyle, :user_id)
  end
end
