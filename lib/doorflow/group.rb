module Doorflow
  class Group
    def self.list_all
      Doorflow.request('/api/2/groups.json')
    end
  end
end