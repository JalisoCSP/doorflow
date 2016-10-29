module Doorflow
  class Reservation
    def self.list_all
      Doorflow.get_request('/api/2/reservations.json')
    end
  end
end