class CreateCampaigns < ActiveRecord::Migration[5.1]
  def change
    create_table :campaigns do |t|
      t.string :title
      t.timestamp :start_date
      t.timestamp :end_date
      t.string :description
      t.string :message
      t.string :facebook_link
      t.string :twitter_link
      t.string :instagram_link
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
