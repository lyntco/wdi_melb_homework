require 'sinatra'
require 'pry'
require 'httparty'

get '/index' do

  if params['movie_search']

    movie = params['movie_search'].gsub(" ", "+")

    result = HTTParty.get("http://www.omdbapi.com/?t=#{movie}")

    @movie_hash = JSON.parse(result)
  end
  erb :index
end