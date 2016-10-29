# Version
require "doorflow/version"

# Internal
# TODO: Classes for each call, eg:
require 'doorflow/person'
require 'doorflow/reservation'

# Third Party
require 'httparty'

module Doorflow
  @base_url = "https://admin.doorflow.com"

  class << self
    attr_accessor :api_key
    # Doorflow.api_key = [YourKey]
  end

  def self.request(url_extension, params = {})
    url = request_url(url_extension, params)
    HTTParty.get(url).parsed_response
  end

  def self.request_url(url_extension, params = {})
    params = params.merge({ api_key: Doorflow.api_key }).to_query
    @base_url + url_extension + '?' + params
  end
end
