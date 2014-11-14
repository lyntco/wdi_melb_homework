require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pg'
require 'pry'


ActiveRecord::Base.establish_connection(
    :adapter => 'postgresql',
    :username => 'robert',
    :database => 'memetube'
  )

class Videos < ActiveRecord::Base
end

before do
  @genres = Videos.pluck(:genre).uniq
end

after do
  ActiveRecord::Base.connection.close
end


get '/' do

  if params[:genre] != nil
    @videos = Videos.where(:genre => "#{params[:genre]}")
  else
    @videos = Videos.all
  end
  erb :index
end

get '/videos' do
  @videos = Videos.all
  erb :index
end

post '/videos/:id/delete' do
  @video = Videos.find(params[:id])
  @video.destroy
  redirect to("/")
end

get '/videos/:id/edit' do
  @video = Videos.find(params[:id])
  erb :edit
end

post '/videos/:id' do
  @video = Videos.find(params[:id])
  @video.title = params[:title]
  @video.url = params[:url]
  @video.description = params[:description]
  @video.genre = params[:genre]

  @video.save

  redirect to("/videos/#{params[:id]}")
end

get '/videos/new' do
  erb :new
end

get '/videos/:id' do
  @video = Videos.find(params[:id])
  erb :show
end

post '/videos' do
  video = Videos.create(:title => "#{params['title']}", :url => "#{params['url']}", :description => "#{params['description']}", :genre => "#{params['genre']}")
  redirect to("/")
  redirect to("/")
end


