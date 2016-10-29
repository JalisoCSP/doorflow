module Doorflow
  class Person
    def self.list_all
      Doorflow.get_request('/api/2/people.json')
    end

    def self.list_all_since(date_time)
      parsed_date = date_time.to_time.iso8601

      Doorflow.get_request(
        '/api/2/people.json',
        {
          since: parsed_date
        }
      )
    end
  end
end