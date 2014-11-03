require 'sinatra'
require 'pry'
require 'httparty'

get '/index' do


  if params["search"]

    @search_string = params["search"].gsub(" ", "+")

    @movies = JSON.parse(HTTParty.get("http://www.omdbapi.com/?s=#{@search_string}"))

    @movieSearch = @movies["Search"]

  end

  erb :index
end


get '/results/:input' do

 if params[:input] && params[:input] !=""

  @search_string = params[:input].gsub(" ", "+")

  @movie_hash = JSON.parse(HTTParty.get("http://www.omdbapi.com/?i=#{params[:input]}"))

 end

  erb :results
end