class Profil < ApplicationRecord
  has_attachment :avatar
  belongs_to :user
end
