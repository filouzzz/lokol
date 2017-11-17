class CampaignsController < ApplicationController

  # require 'facebook_ads'

  before_action :set_company, only: [:new, :create, :show, :edit, :update]
  before_action :set_campaign, only: [:show, :edit, :update]
  before_action :set_campaign_by_campaign_id, only: [:create_facebook_campaign]

  include FacebookAdsHelper

  def new
    @campaign = Campaign.new
  end

  def create
    @campaign = Campaign.new(campaign_params)
    @campaign.company = @company
    @campaign.save!
    redirect_to company_campaign_path(@company, @campaign)
  end

  def create_facebook_campaign
    # from facebook helper:
    create_campaign(@campaign.campaign_name)
    redirect_back(fallback_location: company_campaign_path(@campaign.company, @campaign))
  end

  def show
    # from facebook helper:
    @fb_campaign = show_campaign(@campaign.campaign_name)
  end

  def edit
  end

  def update
    @campaign.update(campaign_params)
    redirect_to company_booking_path(@company, @campaign)
  end


  private

  def set_company
    @company = Company.find(params[:company_id])
  end

  def set_campaign
    @campaign = Campaign.find(params[:id])
  end
  def set_campaign_by_campaign_id
    @campaign = Campaign.find(params[:campaign_id])
  end

  def campaign_params
    params.require(:campaign).permit(:campaign_name, :description)
  end
end
