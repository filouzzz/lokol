class Campaign < ApplicationRecord
  has_attachments :photos, maximum: 5
  belongs_to :company
  after_create :send_launch_campaing_email
  validates :campaign_objective, presence: true
  validates :campaign_name, presence: true
end
