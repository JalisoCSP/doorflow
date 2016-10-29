module Doorflow
  class Reservation
    def self.list_all
      Doorflow.get_request('/api/2/reservations.json')
    end

    def self.post_reservation(door_controller_ids, person_id, start_time, end_time)
      Doorflow.post_request(
        '/api/2/reservations',
        {
          door_controller_ids: door_controller_ids,
          person_id: person_id,
          start_time: start_time,
          end_time: end_time
        }
      )
    end
  end
end