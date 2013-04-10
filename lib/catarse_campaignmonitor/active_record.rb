module CatarseCampaignmonitor
  module ActiveRecord
    def sync_with_compaignmonitor
      self.class_eval <<-RUBY
        before_save do
          if newsletter_changed?
            if newsletter
              CatarseCampaignmonitor::API.subscribe(self)
            else
              CatarseCampaignmonitor::API.unsubscribe(self)
            end
          end
        end
      RUBY
    end
  end
end