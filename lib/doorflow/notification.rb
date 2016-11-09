module DoorFlow
  class Notification
    def self.list_all
      DoorFlow.get_request('/api/2/notification_rules.json')
    end

    def self.post_reservation(door_controller_ids, person_id, start_time, end_time)
      DoorFlow.post_request(
        '/api/2/notification_rules',
        {
          # Note that the response will list the type of action matched where:

          # type: 0
          # POST attribute: match_action
          # POST value: post_to_callback_url
          # description: POST to URL
        }
      )
    end
  end
end