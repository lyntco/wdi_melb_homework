
require 'sinatra'
require 'json'

get '/' do
  erb :index
end

get '/about' do
  erb :about
end

get '/fruit' do
  'mango'
end

get '/hi' do
  "<h2>hello world</h2>"
end

get '/hi.json' do
  sleep 5
  content_type :json
  { :one => 'hello', :two => 'world' }.to_json
end

get '/time.json' do
  content_type :json
  { :now => Time.new }.to_json
end




