require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?
require './models.rb'

get '/' do
  erb :index
end

get '/mentor/:id' do
  @mentor = Mentor.find(params[:id])
  erb :mentor
end

post '/peas/:id' do
  mentor = Mentor.find(params[:id])
  mentor.update_column(:peas, mentor.peas + 1)
end