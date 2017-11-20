class Campaign < ApplicationRecord
  has_attachments :photos, maximum: 5
  belongs_to :company
  after_create :send_launch_campaing_email
end
