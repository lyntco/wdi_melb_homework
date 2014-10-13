require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get '/' do
  erb :index
end

post '/' do
  # raise "This is broken"
  erb :index
end
