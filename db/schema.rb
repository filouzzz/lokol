# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171117123728) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attachinary_files", force: :cascade do |t|
    t.string "attachinariable_type"
    t.bigint "attachinariable_id"
    t.string "scope"
    t.string "public_id"
    t.string "version"
    t.integer "width"
    t.integer "height"
    t.string "format"
    t.string "resource_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["attachinariable_type", "attachinariable_id", "scope"], name: "by_scoped_parent"
    t.index ["attachinariable_type", "attachinariable_id"], name: "attch"
  end

  create_table "audiences", force: :cascade do |t|
    t.string "adset_gender"
    t.string "adset_title"
    t.integer "adset_age_min"
    t.integer "adset_age_max"
    t.string "location"
    t.string "interest"
    t.bigint "campaign_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "adset_targeting_geo_locations_cities"
    t.string "adset_targeting_geo_locations_countries"
    t.string "adset_targeting_geo_locations_country_group"
    t.index ["campaign_id"], name: "index_audiences_on_campaign_id"
  end

  create_table "authorizations", force: :cascade do |t|
    t.string "provider"
    t.string "uid"
    t.integer "user_id"
    t.string "token"
    t.string "secret"
    t.string "first_name"
    t.string "last_name"
    t.string "name"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "campaigns", force: :cascade do |t|
    t.string "campaign_name"
    t.datetime "adset_start_date"
    t.datetime "adset_end_date"
    t.string "description"
    t.string "message"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photos"
    t.string "fb_campaign_id"
    t.string "campaign_objective"
    t.string "adset_bid_amount"
    t.string "adset_billing_event"
    t.integer "adset_daily_budget"
    t.string "ad_status"
    t.string "ad_name"
    t.string "ad_adset_id"
    t.string "ad_creative_object_story_spec_page_id"
    t.string "ad_creative_object_story_spec_plink_data"
    t.string "ad_creative_object_story_spec_plink_data_link"
    t.string "ad_creative_object_story_spec_plink_data_message"
    t.string "ad_creative_object_story_spec_plink_data_name"
    t.string "ad_creative_object_story_spec_plink_data_attachment_style"
    t.string "ad_creative_object_story_spec_plink_data_call_to_action"
    t.string "ad_creative_title"
    t.string "ad_creative_body"
    t.string "ad_creative_object_ur"
    t.string "ad_creative_object_image_file"
    t.index ["company_id"], name: "index_campaigns_on_company_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "street"
    t.integer "street_number"
    t.integer "zip_code"
    t.string "city"
    t.string "country"
    t.string "email"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "logo"
    t.index ["user_id"], name: "index_companies_on_user_id"
  end

  create_table "profils", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "street"
    t.integer "street_number"
    t.integer "zip_code"
    t.string "city"
    t.string "avatar"
    t.string "country"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profils_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
    t.string "provider"
    t.string "uid"
    t.string "facebook_picture_url"
    t.string "first_name"
    t.string "last_name"
    t.string "token"
    t.datetime "token_expiry"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "audiences", "campaigns"
  add_foreign_key "campaigns", "companies"
  add_foreign_key "companies", "users"
  add_foreign_key "profils", "users"
end
