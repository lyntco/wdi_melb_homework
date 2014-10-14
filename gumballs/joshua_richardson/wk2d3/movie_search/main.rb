require "sinatra"
require "pry"
require 'httparty'

get '/' do
  erb :index
end

get '/search' do
  erb :form
end

get '/cloud' do

    params['site_search'].gsub!(/\s+/, '+')

    results = HTTParty.get("http://www.omdbapi.com/?t=#{params['site_search']}")

    @movie_hash = JSON.parse(results)

    erb :index
end

get '/search_results' do

  # erb



end



