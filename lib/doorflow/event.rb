module DoorFlow
  class Event
    def self.list_all
      DoorFlow.get_request('/api/2/events')
    end

    def self.last_all_with_filter(filter_params)
      DoorFlow.get_request(
        '/api/2/events',
        filter_params
      )
    end
  end
end