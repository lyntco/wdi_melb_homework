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


  # @search_string2 = params[:input].gsub(" ", "+")

  @movieHash = JSON.parse(HTTParty.get("http://www.omdbapi.com/?i=#{params[:input]}"))

  database = File.new('database.txt', 'a+')
  database.puts("#{@movieHash['Title']} , #{params[:input]}") #write movie search and movie choice to database. txt file

  erb :results
  end

end