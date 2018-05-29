class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]
  
  def index
    @profiles = Profile.all
  end

  def new
    @profile = Profile.new
    @profile.build_user
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.save!
    redirect_to @profile
  end

  def update
    @profile.update(profile_params)
  end

  def edit
    @profile
  end

  def destroy
    @profile.destroy
  end

  def show
    @profile
  end

  private
  def set_profile
    @profile = Profile.find(params[:id])
  end

  def profile_params
    params.require(:profile).permit(
      :first_name,
      :last_name,
      :username,
      :user_attributes => [
        :email,
        :password
      ]
    )
  end
end
