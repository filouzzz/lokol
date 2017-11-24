class Company < ApplicationRecord
  belongs_to :user
  has_many :campaigns
  has_attachment :picture
end
