require 'sinatra'
require 'json'

get '/' do
  @word_list = %w(gumball cake pudding hotdog)
  erb :index
end

get '/words' do
	# like storing in a 'database'. instead of a database, we stored it on the /words page
	@word_list = %w(gumball cake pudding hotdog)
	JSON.generate(@word_list)
	
end
