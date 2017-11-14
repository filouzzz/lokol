class AddPhotosToCampaign < ActiveRecord::Migration[5.1]
  def change
    add_column :campaigns, :photos, :string
  end
end
