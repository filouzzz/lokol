class Campaign < ApplicationRecord
  has_attachments :photos, maximum: 5
  belongs_to :company
  validates :campaign_objective, presence: true
  validates :campaign_name, presence: true


end
