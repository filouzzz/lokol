class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show]

  def show

  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user = current_user
    if @profile.save
      redirect_to '/'
    else
      redirect_to :new
    end
  end

  def update
  end

  def edit
  end

  private

  def set_profile
   @profile = Profile.find_by(user: current_user)
  end

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :street, :street_number, :zip_code, :city, :avatar, :country)
  end
end
