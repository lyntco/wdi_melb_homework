require 'sinatra'
require "httparty"
require 'pg'
require 'active_record'
require 'pry'

=begin
TO DO
=====
Show the final result by IMDB number and not title
=end

ActiveRecord::Base.establish_connection(
	:adapter => 'postgresql',
	:host => 'localhost',
	:database => 'movies'
	)

# Note that the name of the class maps to the name of the table in the database
class Moviedetails < ActiveRecord::Base
end

# Get rid of the @ in @result
def get_movie(movie)
	@result = HTTParty.get("http://www.omdbapi.com/?t=#{movie.gsub(" ", "+")}")
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

	return @result
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
	elsif Moviedetails.find_by('title' => params['search_string']) != nil# the movie is in the database
		@search_result = Moviedetails.find_by('title' => params['search_string']) # get it from the database
		erb :movie
	else # the movie is not in the database so go and fetch it from omdbapi and store it in the database
		@result = get_movie(params['search_string'])
	 	erb :movie
	end
end

get '/movie_results/:movie_string' do
	if Moviedetails.find_by('title' => params[:movie_string]) != nil # the movie is in the database
		@result = Moviedetails.find_by('title' => params[:movie_string]) # get it from the database
		erb :movie
	else # the movie is not in the database so go and fetch it from omdbapi and store it in the database
		@result = get_movie(params[:movie_string])
		erb :movie
	end
end

