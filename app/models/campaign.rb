class Campaign < ApplicationRecord
  has_attachments :photos, maximum: 5
  belongs_to :company
  validates :campaign_objective, presence: true
  validates :campaign_name, presence: true
  after_create :send_launch_campaign_email
  after_update :send_update_email
  has_many :ads

  private

  # def send_launch_campaign_email
  #   CampaignMailer.launch_campaign(self).deliver_now
  # end

  # def send_update_email
  #   CampaignMailer.update_campaign(self).deliver_now
  # end

end
