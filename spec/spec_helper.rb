require "rspec"
require "rack/test"
require "capybara/rspec"

ENV["RACK_ENV"] = "test"

RSpec.configure do |conf|
  conf.include Rack::Test::Methods
  conf.include Capybara::DSL
end

def app
  Rack::Builder.parse_file(File.dirname(__FILE__) + '/../config.ru').first
end

Capybara.app = app
