require 'sinatra'
require 'pg'
require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
	:adapter => 'postgresql',
	:host => 'localhost',
	:database => 'memetube'
	)

class Video < ActiveRecord::Base
end

before do
	@genres = Video.all.map { |item| item.genre }.uniq
end

# This does not work as expected
# after do
# 	ActiveRecord::base.connection.close
# end

get '/' do
	@result = Video.all
	erb :index
end

get '/memetube' do
	@result = Video.all
	erb :index
end

get '/memetube/genre' do
	@result = Video.where(:genre => params[:genre])
	erb :show
end

get '/memetube/show' do
	@result = Video.all
	erb :show
end

get '/memetube/:id/edit' do
	@result = Video.find(params[:id])
	erb :edit
end

post '/memetube/:id' do
	video = Video.find(params[:id])
	video.title = params[:title]
	video.description = params[:description]
	video.url = params[:url]
	video.genre = params[:genre]
	video.save
	redirect to("/memetube/#{params[:id]}")
end

get '/memetube/new' do
	erb :new
end

get '/memetube/:id' do
	@result = Video.where(:id => params[:id])
	erb :show
end

post '/memetube' do
	video = Video.new(:title => params[:title], :description => params[:description], :url => params[:url], :genre => params[:genre])
	video.save
	redirect to('/')
end

get '/memetube/:id/delete' do
	@result = Video.find(params[:id])
	erb :delete
end

post '/memetube/:id' do
	Video.delete(params[:id])
	redirect to('/')
end
