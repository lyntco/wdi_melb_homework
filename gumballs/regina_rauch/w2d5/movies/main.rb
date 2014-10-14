require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'httparty'

get '/' do
  erb :index
end

get '/movie-search' do
  #erb "You searched for #{params['search_string']}"

  search_movie = params['search_movie'].gsub " ", "+"

  response = HTTParty.get("http://www.omdbapi.com/?i=&s=#{search_movie}")

  result = JSON.parse(response)


  @search = result["Search"]




  erb :results

end

get '/movie/:imdbid' do
  #search_movie = params[:title].gsub " ", "+"

  search_movie = params[:imdbid]

  response = HTTParty.get("http://www.omdbapi.com/?i=#{search_movie}")

  result = JSON.parse(response)

  #binding.pry
  @title = result["Title"]
  @year = result["Year"]
  @director = result["Director"]
  @plot = result["Plot"]
  @poster = result["Poster"]


db = File.new('database.txt', 'a+') #sets up new db/opens
  db.puts(@title) #writes to the file
db.close #end - DT pro tip: do this when you open the file

  erb :movie


end
