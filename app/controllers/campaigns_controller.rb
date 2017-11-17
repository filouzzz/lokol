class CampaignsController < ApplicationController

  # require 'facebook_ads'

  before_action :set_company, only: [:new, :create, :show, :edit, :update]
  before_action :set_campaign, only: [:show, :edit, :update]

  def new
    @campaign = Campaign.new
  end

  def create
    @campaign = Campaign.new(campaign_params)
    @campaign.company = @company
    @campaign.company = current_user
    @campaign.save!
    redirect_to company_campaign_path(@company, @campaign)


  end

  def show
  end

  def edit
  end

  def update
    @campaign.update(campaign_params)
    redirect_to company_booking_path(@company, @campaign)
  end


  private

  def set_flat
    @company = Company.find(params[:company_id])
  end

  def set_booking
    @campaign = Booking.find(params[:id])
  end

  def booking_params
    params.require(:company).permit(:title :start_date :end_date :description :message)
  end




end
