# myapp.rb
require 'sinatra'
require 'sinatra/reloader'
require 'yaml'
require 'erb'

get '/' do
  @quotes = YAML.load_file("#{settings.root}/quotes.yml")
  #puts @quotes
  #@qutes = settings.quotes
  #puts @quotes.id
  erb :index, layout: :base
end

get '/:id' do
  erb :show, layout: :base
end
