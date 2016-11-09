module DoorFlow
  class DoorController
    def self.list_all
      DoorFlow.get_request('/api/2/door_controllers.json')
    end

    def self.with_id(id)
      DoorFlow.get_request('/api/2/door_controller/#{id}.json')
    end
  end
end