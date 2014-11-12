require 'sinatra'
require 'json'

get '/' do
  @word_list = %w(gumball cake pudding hotdog)
  erb :index
end

get '/words' do
  @word_list = %w(gumball cake pudding hotdog)
  JSON.generate(@word_list)
end





