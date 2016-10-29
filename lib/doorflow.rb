# Version
require "doorflow/version"

# Third Party
require 'httparty'

# Internal
# None

module Doorflow
  @base_url = "https://admin.doorflow.com"

  attr_accessor :api_key

  def self.api_url(url = @base_url, api_base_url = '')
    url + url_extension
  end

  def self.request(api_key)
    if valid_api_key
      HTTParty.get(
        api_url(@base_url, "/api/2/people?api_key=#{api_key}")
      )
    end
  end

  def self.valid_api_key
    # TODO: Check API key
    true
  end
end
