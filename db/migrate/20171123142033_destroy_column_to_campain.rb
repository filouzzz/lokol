class DestroyColumnToCampain < ActiveRecord::Migration[5.1]
  def change
    remove_column :campaigns, :ad_status, :string
    remove_column :campaigns, :ad_name, :string
    remove_column :campaigns, :ad_adset_id, :string
    remove_column :campaigns, :ad_creative_object_story_spec_page_id, :string
    remove_column :campaigns, :ad_creative_object_story_spec_plink_data, :string
    remove_column :campaigns, :ad_creative_object_story_spec_plink_data_link, :string
    remove_column :campaigns, :ad_creative_object_story_spec_plink_data_message, :string
    remove_column :campaigns, :ad_creative_object_story_spec_plink_data_name, :string
    remove_column :campaigns, :ad_creative_object_story_spec_plink_data_attachment_style, :string
    remove_column :campaigns, :ad_creative_object_story_spec_plink_data_call_to_action, :string
    remove_column :campaigns, :ad_creative_title, :string
    remove_column :campaigns, :ad_creative_body, :string
    remove_column :campaigns, :ad_creative_object_ur, :string
    remove_column :campaigns, :ad_creative_object_image_file, :string




  end
end
