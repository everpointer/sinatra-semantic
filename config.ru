require 'bundler'
Bundler.setup :default
require 'sinatra/base'
require 'sprockets'
require './app'

map '/assets' do
  environment = Sprockets::Environment.new
  environment.append_path 'vendor/assets/components/jquery' 
  environment.append_path 'vendor/assets/components/semantic/build/packaged' 
  environment.append_path 'assets'
  run environment
end

map '/' do
  run Sinatra::Application
end
