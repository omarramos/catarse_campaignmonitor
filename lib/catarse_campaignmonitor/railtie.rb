module CatarseCampaignmonitor
  class Railtie < Rails::Railtie
    initializer 'catarse_campaignmonitor.active_record' do
      ActiveSupport.on_load :active_record do
        extend ::CatarseCampaignmonitor::ActiveRecord
      end
    end
  end
end
