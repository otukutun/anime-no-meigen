# myapp.rb
require 'sinatra'
require 'sinatra/reloader'
require 'yaml'
require 'json'
require 'erb'
require 'active_support/all'

get '/api' do
  @quotes = YAML.load_file("#{settings.root}/quotes.yml")
  @quotes.to_json
end

get '/api/:id' do
end

get '/' do
  erb :index, layout: :base
end

get '/:id' do
  erb :show, layout: :base
end
