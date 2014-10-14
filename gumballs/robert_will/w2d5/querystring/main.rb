require 'sinatra'
require 'pry'

get '/hi' do
  puts hello
  erb :index
end


post '/hi' do
  erb :index
end