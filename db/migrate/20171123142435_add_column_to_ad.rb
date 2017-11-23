class AddColumnToAd < ActiveRecord::Migration[5.1]
  def change
    add_column :ads, :ad_status, :string
    add_column :ads, :ad_name, :string
    add_column :ads, :ad_adset_id, :string
    add_column :ads, :ad_creative_object_story_spec_page_id, :string
    add_column :ads, :ad_creative_object_story_spec_plink_data, :string
    add_column :ads, :ad_creative_object_story_spec_plink_data_link, :string
    add_column :ads, :ad_creative_object_story_spec_plink_data_message, :string
    add_column :ads, :ad_creative_object_story_spec_plink_data_name, :string
    add_column :ads, :ad_creative_object_story_spec_plink_data_attachment_style, :string
    add_column :ads, :ad_creative_object_story_spec_plink_data_call_to_action, :string
    add_column :ads, :ad_creative_title, :string
    add_column :ads, :ad_creative_body, :string
    add_column :ads, :ad_creative_object_ur, :string
    add_column :ads, :ad_creative_object_image_file, :string
  end
end
