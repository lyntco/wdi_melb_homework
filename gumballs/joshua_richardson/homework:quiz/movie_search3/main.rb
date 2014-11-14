require "sinatra"
require "pry"
require 'active_record'
require 'httparty'

ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :host => 'localhost',
  :database => 'moviesearch',
  :pool => 500 # temporary fix increasing pool size limit
)

class Movie < ActiveRecord::Base # inherits from active record, the Base module
  # validates_presence_of :name
end

get '/' do
  erb :form
end

get '/search' do
    erb :form
end

get '/search_list' do

    # changes spaces to plus for the URL
    params['site_search'].gsub!(/\s+/, '+')

    # gets the results from the api
    results = HTTParty.get("http://www.omdbapi.com/?s=#{params['site_search']}")

    # parses the JSON results to readable ruby
    @movie_hash = JSON.parse(results)

    # the movies are within a 'search' hash so this sets a new instance variable to be able to access within the search hash
    @movies = @movie_hash["Search"]

    erb :search_list
end

get '/index/:name' do

    binding.pry
    result = params[:name].gsub(/\s+/, '+')

    binding.pry

    results = HTTParty.get("http://www.omdbapi.com/?t=#{result}")

    @movie_hash = JSON.parse(results)

    # # Creates database to track movies clicked on
    # db = File.new('database.txt', 'a+')
    # movie_name = []

    # # forces the movie name into the array inside the database
    # movie_name << db.puts(@movie_hash["Title"])

    # db.close

    # saves the data of the movie clicked to the database to lower requests to the HTTParty server
    binding.pry
    movie = Movie.new
    movie.title = @movie_hash["Title"]
    movie.plot = @movie_hash["Plot"]
    movie.poster_url = @movie_hash["Poster"]
    movie.released = @movie_hash["Released"]

    movie.save


  erb :index

end


