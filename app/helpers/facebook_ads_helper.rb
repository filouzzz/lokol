module FacebookAdsHelper
  require 'facebook_ads'

  def ad_account
    FacebookAds.configure do |config|
      config.access_token = ENV['FACEBOOK_ACCESS_TOKEN']
      #config.app_secret = 'a3492d45f5faf1d4e381eee555b2b6ae'
    end
    ad_account = FacebookAds::AdAccount.get( ENV['FACEBOOK_AD_ACCOUNT'], 'name')
  end

  def create_fb_campaign(campaign_details)
    campaign = ad_account.campaigns.create({
      name: campaign_details[:name],
      objective: campaign_details[:objective]
    })
    puts "Ad Account Name: #{campaign.name}"
    campaign
  end

def create_ad_set(adset_details)
  adset = ad_account.adsets.create({
    name: adset_details[:adset_name],
    campaign_id: adset_details[:id],
    bid_amount: adset_details[:adset_bid_amount],
    billing_event: adset_details[:adset_billing_event],
    daily_budget: adset_details[:adset_daily_budget]
})
end

  def show_fb_campaign(name)
    the_campaign = []
    ad_account.campaigns(fields: 'name').each do |c|
      the_campaign << c if c.name == name
    end
    the_campaign
  end


  # def create_adset
  #   ad_account.adsets(fields: 'name').each do |adset|
  #     puts adset.name
  #     puts adset.id
  #   end
  # end

  # ad_account.ads.each do |ad|
  #   puts ad.name
  #   puts "This is the Add ID #{ad.id}"
  #   puts ad.adset_id
  #   puts ad.creative.object_story_spec.link_data.link
  #   puts ad.creative.object_story_spec.page_id
  # end

  # ad_account = FacebookAds::AdAccount.get('act_10151499329257166', 'name')

end
