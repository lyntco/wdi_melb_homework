require "sinatra"
require	"httparty"
require "pry"



get "/" do
	erb :index
end

get "/results" do

	search_movie = params["search_movie"].gsub " ", "+"

	response = HTTParty.get("http://www.omdbapi.com/?s=#{search_movie}")
	hash = JSON.parse(response)
	@results_array = hash["Search"]

	if @results_array.count >= 2


		erb :search

	else

		search_movie = params["search_movie"].gsub " ", "+"

		response = HTTParty.get("http://www.omdbapi.com/?t=#{search_movie}")

		hash = JSON.parse(response)
		
		@title = hash["Title"]
		@year = hash["Year"]
		@plot = hash["Plot"]
		@poster = hash["Poster"]

		db = File.new("database.txt", "a+")

		db.puts @title

		db.close
		erb :results

	end
end

get "/results_list/:imdb_id" do
	search_movie = params[:imdb_id].gsub " ", "+"

	response = HTTParty.get("http://www.omdbapi.com/?i=#{search_movie}")

		hash = JSON.parse(response)
		
		@title = hash["Title"]
		@year = hash["Year"]
		@plot = hash["Plot"]
		@poster = hash["Poster"]

		db = File.new("database.txt", "a+")

		db.puts @title

		db.close

	erb :results

end
