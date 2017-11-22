class Profile < ApplicationRecord
  has_attachment  :avatar, accept: [:jpg, :png, :gif]
  belongs_to :user
end
