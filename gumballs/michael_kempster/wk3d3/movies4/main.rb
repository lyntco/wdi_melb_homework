require 'sinatra'
require "httparty"
require 'pg'
require 'active_record'
require 'pry'

=begin
TO DO
=====
Show the final result by IMDB number and not title

ISSUES
======
Cached movies do not show up at all, tried stripping out the relevant contents fo the returned object to no avail
Refactoring the code by using a method for the database work fails - method not found
=end

ActiveRecord::Base.establish_connection(
	:adapter => 'postgresql',
	:host => 'localhost',
	:database => 'movies'
	)

# Note that the name of the class maps to the name of the table in the database
class Moviedetails < ActiveRecord::Base
end

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

	if @search_result.length > 1 # there is more than one movie in the database
		erb :results
	elsif Moviedetails.find_by('title' => params['search_string']) != nil # The movie is in the database
		@search_result = Moviedetails.find_by('title' => params['search_string']) # Get it from the database
		@result = @result.instance_values["attributes"] # Strip out the has of values as the object is not working as expected STILL DOES NOT WORK
		erb :movie
	else # The movie is not in the database so go and fetch it from omdbapi and store it in the database
		@search_result = HTTParty.get("http://www.omdbapi.com/?t=#{params['search_string'].gsub(" ", "+")}")
		@search_result = JSON.parse(@search_result)

		movie = Moviedetails.new()
		movie.title = @search_result['Title']
		movie.year = @search_result['Year']
		movie.rated = @search_result['Rated']
		movie.released = @search_result['Released']
		movie.runtime = @search_result['Runtime']
		movie.genre = @search_result['Genre']
		movie.director = @search_result['Director']
		movie.writer = @search_result['Writer']
		movie.actors = @search_result['Actors']
		movie.plot = @search_result['Plot']
		movie.language = @search_result['Language']
		movie.country = @search_result['Country']
		movie.awards = @search_result['Awards']
		movie.poster = @search_result['Poster']
		movie.metascore = @search_result['Metascore']
		movie.imdbrating = @search_result['imdbRating']
		movie.imdbvotes = @search_result['imdbVotes']
		movie.imdbid = @search_result['imdbID']
		movie.typee = @search_result['Type']
		movie.response = @search_result['Response']
		movie.save

		@result = @search_result

	 	erb :movie
	end
end

get '/movie_results/:movie_string' do

	if Moviedetails.find_by('title' => params[:movie_string]) != nil # The movie is in the database
		@result = Moviedetails.find_by('title' => params[:movie_string]) # Get it from the database
		@result = @result.instance_values["attributes"] # Strip out the has of values as the object is not working as expected STILL DOES NOT WORK
		erb :movie
	else # The movie is not in the database so go and fetch it from omdbapi and store it in the database
		@result = HTTParty.get("http://www.omdbapi.com/?t=#{params[:movie_string].gsub(" ", "+")}")
		@result = JSON.parse(@result)
		
		movie = Moviedetails.new
		movie.title = @result['Title']
		movie.year = @result['Year']
		movie.rated = @result['Rated']
		movie.released = @result['Released']
		movie.runtime = @result['Runtime']
		movie.genre = @result['Genre']
		movie.director = @result['Director']
		movie.writer = @result['Writer']
		movie.actors = @result['Actors']
		movie.plot = @result['Plot']
		movie.language = @result['Language']
		movie.country = @result['Country']
		movie.awards = @result['Awards']
		movie.poster = @result['Poster']
		movie.metascore = @result['Metascore']
		movie.imdbrating = @result['imdbRating']
		movie.imdbvotes = @result['imdbVotes']
		movie.imdbid = @result['imdbID']
		movie.typee = @result['Type']
		movie.response = @result['Response']
		movie.save

		erb :movie
	end
end

