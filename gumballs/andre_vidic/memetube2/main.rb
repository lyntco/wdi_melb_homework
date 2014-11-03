require 'sinatra'
require 'pg'
require 'pry'
require 'active_record'

config = {
  :adapter => 'postgresql',
  :database => 'videos'
}

ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || config)

class Video < ActiveRecord::Base
end

before do
  @genres = Video.pluck(:genre).uniq
end

get '/' do
  @rows = Video.all
  erb :index
end

get '/videos' do
  @rows = Video.all
  erb :index
end

post '/videos/:id/delete' do
  @rows = Video.find(params[:id]).delete
  redirect to("/")
end

get '/genres/:genre' do
  @rows = Video.where(:genre => params[:genre])
  erb :index
end

#Edit
get '/videos/:id/edit' do
  @row = Video.find(params[:id])
  erb :edit
end

#Update
post '/videos/:id' do
  video1 = Video.find(params[:id])
  video1.title = params[:title]
  video1.description = params[:description]
  video1.url = params[:url]
  video1.genre = params[:genre]
  video1.save
  redirect to("/videos/#{params[:id]}")
end


get '/videos/new' do
  erb :new
end

#Show details
get '/videos/:id' do
  @row = Video.find(params[:id])
  erb :show
end

#Create New
post '/videos' do
  video1 = Video.new
  video1.title = params[:title]
  video1.description = params[:description]
  video1.url = params[:url]
  video1.genre = params[:genre]
  video1.save
  redirect to('/')
end

after do
  ActiveRecord::Base.connection.close
end