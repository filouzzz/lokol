class CampaignsController < ApplicationController

  # require 'facebook_ads'

  before_action :set_company, only: [:index, :new, :create, :show, :edit, :update]
  before_action :set_campaign, only: [:show, :edit, :update]
  before_action :set_campaign_by_campaign_id, only: [:create_facebook_campaign]

  include FacebookAdsHelper

 def index
    @campaigns = @company.campaigns
    # @created_campaigns = Campaign.where(user: current_user)
    # raise
  end

  def new
    @campaign = Campaign.new
  end

  def create
    @campaign = Campaign.new(campaign_params)
    @campaign.company = @company
    if @campaign.save!
      flash[:notice] = "Campaign #{@campaign.campaign_name} created!"
      redirect_to company_campaign_path(@company, @campaign)
    else
      render :new
    end
  end

  def create_facebook_campaign
    # create campaign
    campaign_details = {
      name: @campaign.campaign_name,
      objective: @campaign.campaign_objective
    }
    fb_campaign = create_fb_campaign(campaign_details) # <-- This is the Facebook helper
    # create adset
    adset_details = {
      fb_id: fb_campaign[:id],
      adset_name: @campaign.adset_name,
      # start: @campaign.adset_start_date,
      # end: @campaign.adset_end_date,
      adset_bid_amount: @campaign.adset_bid_amount,
      adset_billing_event: @campaign.campaign_objective,
      adset_daily_budget: @campaign.adset_daily_budget,
      campaign_id: @campaign.id,
      adset_age_min: @campaign.adset_age_min,
      adset_age_max: @campaign.adset_age_max,
      adset_location: @campaign.adset_location
    }
    create_adset(adset_details) # <-- This is the Facebook helper facebook_ads_helper.rb
    redirect_back(fallback_location: company_campaign_path(@campaign.company, @campaign))
  end


  # def create_facebook_adset
  #   adset_details = {
  #     name: @campaign.adset_name,
  #     start: @campaign.adset_start_date,
  #     end: @campaign.adset_end_date,
  #     bid_amount: @campaign.adset_bid_amount,
  #     billing: @campaign.adset_billing_event,
  #     budget: @campaign.adset_daily_budget,
  #     campaign_id: @campaign.id
  #   }
  #   create_adset(adset_details) # <-- This is the Facebook helper facebook_ads_helper.rb
  #   redirect_back(fallback_location: company_campaign_path(@campaign.company, @campaign))
  # end

  def show
    # from facebook helper:
    @fb_campaign = show_fb_campaign(@campaign.campaign_name)
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
    params.require(:campaign).permit(:campaign_name, :campaign_objective, :adset_name, :adset_bid_amount, :adset_billing_event, :adset_daily_budget, :adset_age_min, :adset_age_max, :adset_location)
  end
end
