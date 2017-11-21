class CampaignMailerPreview < ActionMailer::Preview
  def welcome
    campaign = Campaign.first
    CampaignMailer.launch_campaign(campaign)
  end

  def update
    campaign = Campaign.first
    CampaignMailer.update_campaign(campaign)
  end
end
