class ProfilsController < ApplicationController
  before_action :set_profil, only: [:show]


  def show

  end

  def new
    @profil = Profil.new
  end

  def create
    @profil = Profil.new(profil_params)
    @profil.user = current_user
    if @profil.save
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

  def set_profil
   @profil = Profil.find_by(user: current_user)
  end

  def profil_params
    params.require(:profil).permit(:first_name, :last_name, :street, :street_number, :zip_code, :city, :avatar, :country)
  end
end
