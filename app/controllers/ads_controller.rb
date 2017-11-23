class AdsController < ApplicationController
  before_action :set_campaign, only: [:new]
  before_action :set_company, only: [:new]
  before_action :set_ad, only: [:destroy]

  def new
    @ad = Ad.new
  end


  def create
  end


  def destroy

  end

  private

  def set_ad
    @ad = Ad.find(params[:id])
  end


  def set_campaign
    @campaign = Campaign.find(params[:campaign_id])
  end

  def set_company
    @company = Company.find(params[:company_id])
  end

end

