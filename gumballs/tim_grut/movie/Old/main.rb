require "sinatra"
require "sinatra/reloader"
require "pry"
require 'httparty'

get "/" do
  erb:form
end
get "/search" do
  erb :form
end

get "/search_results" do
  # erb "you searched for #{params['search_string']}"
  # search_string = "Jaws"

  if params["search_string"].include?(" ")
  search_string = params["search_string"].gsub!(" ", "+")
else
    search_string = params["search_string"]
  end

json_string = HTTParty.get("http://www.omdbapi.com/?s=#{search_string}")
  @result = JSON.parse(json_string)



# result["Search"][0]["Title"]

  # @poster = @result["Search"][0]["Poster"]
  # @title = @result["Search"][0]["Title"]
  # @result = @result["Search"]
  # # @display.delete("Title")
  # # @display.delete("Poster")
  # @imdbID = @result["Search"][0]["imdbID"]



  erb :search_results
end


get "/final_film/:name" do
  # erb "you searched for #{params['search_string']}"
  # search_string = "Jaws"

    nearly_link = params[:nearly_link]

selected = HTTParty.get("http://www.omdbapi.com/?i=#{nearly_link}")
  @result = JSON.parse(selected)

  @poster = @result["Poster"]
  @title = @result["Title"]
    @imdbID = @result["imdbID"]

  @display = @result["Search"]
  @display.delete("Title")
  @display.delete("Poster")

erb :final_film

end
