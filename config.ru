$:.unshift File.dirname(__FILE__)

require "sinatra"
require "sinatra/config_file"
require "sinatra/flash"
require "sass"
require "coffee_script"

# Google Analytics
#require "rack/google-analytics"
#use Rack::GoogleAnalytics, :tracker => "UA-28186072-1"

# The App
require "models"
require "helpers"
require "routes"
run Application
