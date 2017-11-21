class CampaignMailer < ApplicationMailer
  def launch_campaign(campaign)
     @campaign = campaign
     mail(to: @campaign.company.email, subject: "your campaign")
  end
end
