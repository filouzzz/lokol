class AdsController < ApplicationController
  before_action :set_campaign
  before_action :set_ad

  def new
    @ad = Ad.new
  end

  def create
    @ad = Ad.new(ad_params)
    @ad.campaign_id = @campaign.id
    if @campaign.save!
      flash[:notice] = "Ad #{@campaign.ad_name} created!"
      redirect_to company_campaigns_path(@campaign.company, @campaign)
    else
      render :new
    end
  end

  def destroy
    @ad.destroy
    redirect_to company_campaigns_path(@campaign.company, @campaign)
  end

  private

  def set_ad
    @ad = Ad.find(params[:id])
  end

  def set_campaign
    @campaign = Campaign.find(params[:campaign_id])
  end

  def ad_params
    params.require(:ad).permit(:ad_status, :ad_name, :ad_creative_object_story_spec_plink_data_message, :ad_creative_title, :ad_creative_body, :ad_creative_object_ur)
  end
end

