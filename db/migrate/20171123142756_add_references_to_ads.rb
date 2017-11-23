class AddReferencesToAds < ActiveRecord::Migration[5.1]
  def change
    add_reference :ads, :campaign, foreign_key: true
  end
end
