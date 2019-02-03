require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?
require './models.rb'
require 'net/http'

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

get '/nino' do
    mentor = Mentor.find(12)
    mentor.update_column(:peas, mentor.peas + 69145678)
end