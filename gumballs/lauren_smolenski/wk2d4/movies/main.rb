require 'sinatra'
require 'pry'
require 'rerun'
require 'HTTParty'

get '/' do
  # result = HTTParty.get()
  # result = JSON.parse(result)
  erb :index
end

get '/search_results' do
  if params["search_string"].include?(" ")
    search_string = params["search_string"].gsub!(" ", "+")
  else
  search_string = params['search_string']
end
  results = HTTParty.get("http://www.omdbapi.com/?s=#{search_string}")
  @results = JSON.parse(results)
  @movies = @results['Search']

  erb :search_results
end

get '/movie_details/:name' do
  if params[:name].include?(" ")
    search_string = params[:name].gsub!(" ", "+")
  else
  search_string = params[:name]
end
  result = HTTParty.get("http://www.omdbapi.com/?t=#{search_string}")
  @result = JSON.parse(result)

  @title = @result["Title"]

  @poster = @result["Poster"]

  @display = @result

  @display.delete("Title")
  @display.delete("Poster")

  db = File.new('database.txt', 'a+')

  db << @title

  db.close

  erb :movie_details
end



