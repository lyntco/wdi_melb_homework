require 'sinatra'
require "httparty"
require 'pry'

=begin
TO DO
=====
Fix the issue where styling is not being applied to the final movie page
Show the final result by IMDB number and not title
=end

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
	@search_result = HTTParty.get("http://www.omdbapi.com/?s=#{params['search_string'].gsub(" ", "+")}")
	@search_result = JSON.parse(@search_result)
	@search_result = @search_result["Search"]
	if @search_result.length > 1
		erb :results
	else
		@result = HTTParty.get("http://www.omdbapi.com/?t=#{params['search_string'].gsub(" ", "+")}")
		@result = JSON.parse(@result)
	 	erb :movie
	end
end

get '/movie_results/:movie_string' do
	@result = HTTParty.get("http://www.omdbapi.com/?t=#{params[:movie_string].gsub(" ", "+")}")
	@result = JSON.parse(@result)
	erb :movie
end
