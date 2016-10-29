module DoorFlow
  class Group
    def self.list_all
      DoorFlow.get_request('/api/2/groups.json')
    end
  end
end