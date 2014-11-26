     
require 'sinatra'
require "json"

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
	'<h1>hello world</h1>'
end

get '/hi.json' do
	sleep 5
	content_type :json
	{ :one => 'hello', :two => 'world'}.to_json
end


get '/time.json' do
	content_type :json
	{ :now => Time.now }.to_json 

end










