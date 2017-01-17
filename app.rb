# myapp.rb
require 'sinatra'
require 'sinatra/reloader'
require 'erb'
#
get '/' do
  erb :index, layout: :base
end

get '/:id' do
  erb :show, layout: :base
end
