module CatarseCampaignmonitor
  module API
    extend self

    def subscribe(user, list_id = CAMPAIGN_MONITOR_LIST_ID)
      CreateSend::Subscriber.add(createsend_auth, list_id, user.email, user.full_name, [], true)
    end

    def unsubscribe(user, list_id = CAMPAIGN_MONITOR_LIST_ID)
      # subscriber = CreateSend::Subscriber.get(createsend_auth, list_id, user.email)
      subscriber = CreateSend::Subscriber.new(createsend_auth, list_id, user.email)
      result = subscriber.unsubscribe
      p 'unsubscribe'
      p result
      # Rails.logger.info subscriber
      # Rails.logger.info subscriber.unsubscribe
    end

    protected

    def createsend_auth
      {:api_key => CAMPAIGN_MONITOR_API_KEY}
    end
  end
end
