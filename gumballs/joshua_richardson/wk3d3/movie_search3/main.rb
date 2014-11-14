require "sinatra"
require "pry"
require 'httparty'

get '/' do
  erb :form
end

# get '/search' do
#     erb :form
# end

get '/search_list' do

    params['site_search'].gsub!(" ", '+')

    results = HTTParty.get("http://www.omdbapi.com/?s=#{params['site_search']}")

    @movie_hash = JSON.parse(results)

    @movies = @movie_hash["Search"]

    erb :search_list
end

get '/index/:name' do

    result = params[:name].gsub!(" ", '+')

    results = HTTParty.get("http://www.omdbapi.com/?t=#{result}")

    @movie_hash = JSON.parse(results)

  erb :index

end
