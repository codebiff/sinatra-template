$:.unshift File.dirname(__FILE__)

require "sinatra"

# Google Analytics
#require "rack/google-analytics"
#use Rack::GoogleAnalytics, :tracker => "UA-28186072-1"

# The App
require "settings"
require "models"
require "helpers"
require "routes"
run Application
