require 'sinatra'
require "httparty"
require 'pry'

get '/' do
	erb :index
end

get '/about' do
	erb :about
end

get '/search' do
	erb :search
end

get '/search_results' do
	@result = HTTParty.get("http://www.omdbapi.com/?t=#{params['search_string'].gsub(" ", "+")}")
	@result = JSON.parse(@result)
	erb :movie
end
