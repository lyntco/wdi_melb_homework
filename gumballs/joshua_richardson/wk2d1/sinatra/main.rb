require 'pry'
require 'sinatra'
require 'sinatra-reloader'

get '/' do
  "OMFG!! hello world from sinatra"
end

# file extensions not required. Pretty URLs
get '/about' do
  "The adventures of WDI1 Melbourne"
end

get '/goodbye' do
  "Goodbye cruel world!"
end

get '/hi/:name' do
  "Hello #{params[:name]}"
end

get '/hi/:firstname/:lastname' do
  "Your first name si #{params[:firstname]}, your last name is #{params[:lastname]}"
end

get '/calc/multiply/:num1/:num2' do
  result = params[:num1].to_f * params[:num2].to_f
  "The result is #{result}"
end
