require "sinatra"
require	"httparty"
require "pry"

get "/" do
	erb :index
end

get "/results" do

	search_movie = params["search_movie"].gsub " ", "+"

	response = HTTParty.get("http://www.omdbapi.com/?i=&t=#{search_movie}")

	hash = JSON.parse(response)
	
	@title = hash["Title"]
	@year = hash["Year"]
	@plot = hash["Plot"]
	@poster = hash["Poster"]

erb :index

end