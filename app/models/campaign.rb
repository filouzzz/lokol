class Campaign < ApplicationRecord
  has_attachments :photos, maximum: 5
  belongs_to :company
end
