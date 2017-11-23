class Ad < ApplicationRecord
  belongs_to :campaign
  has_attachment  :ad_creative_object_image_file
end
