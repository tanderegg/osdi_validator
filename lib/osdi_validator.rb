require "osdi_validator/version"
require "hal-client"

module OSDIValidator

  class Validator

    def initialize(url, api_key)
      @url = url
      @api_key = api_key
      @client = HalClient.new(:authorization => "Authorization: Basic #{@api_key}")
      @base_rep = nil
    end

    def validate
      connect
      puts "Validating..."
    end

    def connect
      @base_rep = HalClient.get(@url)
    end

  end
end
