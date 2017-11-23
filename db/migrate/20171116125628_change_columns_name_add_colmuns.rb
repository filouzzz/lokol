class ChangeColumnsNameAddColmuns < ActiveRecord::Migration[5.1]
  def change
    add_column :campaigns, :fb_campaign_id, :string
    add_column :campaigns, :campaign_objective, :string
    rename_column :campaigns, :title, :campaign_name

    add_column :campaigns, :adset_bid_amount, :string
    add_column :campaigns, :adset_billing_event, :string
    rename_column :campaigns, :start_date, :adset_start_date
    rename_column :campaigns, :end_date, :adset_end_date
    add_column :campaigns, :adset_daily_budget, :integer

    rename_column :audiences, :gender, :adset_gender
    rename_column :audiences, :title, :adset_title
    rename_column :audiences, :age_min, :adset_age_min
    rename_column :audiences, :age_max, :adset_age_max
    add_column :audiences, :adset_targeting_geo_locations_cities, :string
    add_column :audiences, :adset_targeting_geo_locations_countries, :string
    add_column :audiences, :adset_targeting_geo_locations_country_group, :string

    add_column :campaigns, :ad_status, :string
    add_column :campaigns, :ad_name, :string
    add_column :campaigns, :ad_adset_id, :string
    add_column :campaigns, :ad_creative_object_story_spec_page_id, :string
    add_column :campaigns, :ad_creative_object_story_spec_plink_data, :string
    add_column :campaigns, :ad_creative_object_story_spec_plink_data_link, :string
    add_column :campaigns, :ad_creative_object_story_spec_plink_data_message, :string
    add_column :campaigns, :ad_creative_object_story_spec_plink_data_name, :string
    add_column :campaigns, :ad_creative_object_story_spec_plink_data_attachment_style, :string
    add_column :campaigns, :ad_creative_object_story_spec_plink_data_call_to_action, :string
    add_column :campaigns, :ad_creative_title, :string
    add_column :campaigns, :ad_creative_body, :string
    add_column :campaigns, :ad_creative_object_ur, :string
    add_column :campaigns, :ad_creative_object_image_file, :string


    remove_column :campaigns, :facebook_link, :string
    remove_column :campaigns, :twitter_link, :string
    remove_column :campaigns, :instagram_link, :string
  end
end
