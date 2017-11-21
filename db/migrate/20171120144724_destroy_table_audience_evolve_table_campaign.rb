class DestroyTableAudienceEvolveTableCampaign < ActiveRecord::Migration[5.1]
  def change
    add_column :campaigns, :adset_age_min, :integer
    add_column :campaigns, :adset_age_max, :integer
    add_column :campaigns, :adset_location, :string
    drop_table :audiences
  end
end
