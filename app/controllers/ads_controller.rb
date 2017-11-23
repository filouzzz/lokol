class AdsController < ApplicationController
  before_action :set_campaign
  before_action :set_ad
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

  end


  def set_campaign
    @campaign = Campaign.find(params[:campaign_id])
  end


end

