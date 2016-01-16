$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'osdi_validator'
require 'webmock/rspec'

WebMock.disable_net_connect!(allow_localhost: true)

RSpec.configure do |config|
  config.before(:each) do
    stub_request(:get, "http://opensupporter.org/api/").
      with(:headers => {'Accept'=>'application/hal+json;q=0', 'Connection'=>'close', 'Host'=>'opensupporter.org', 'User-Agent'=>'http.rb/0.8.12'}).
      to_return(:status => 200, :body => "", :headers => {})
  end
end