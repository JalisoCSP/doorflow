module DoorFlow
  class Account
    def self.list_all
      DoorFlow.get_request('/api/2/account.json')
    end
  end
end