require 'sinatra'
require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :host => 'localhost',
  :database => 'memetube',
  :pool => 500 # temporary fix increasing pool size limit
)

class Video < ActiveRecord::Base # inherits from active record, the Base module
  # validates_presence_of :name
end

get '/' do
  @movies = Video.all
  erb :index
end

get '/movies' do
  @movies = Video.all
  erb :index
end

get '/movies/new' do
  @movies = Video.all
  erb :new
end

get '/movies/:id' do
  @movie = Video.find(params[:id])

  erb :show
end

get '/movies/:id/edit' do
  @movie = Video.find(params[:id])
  erb :edit
end

# posts new memes
post '/movies' do
  video = Video.new
  video.title = params[:title]
  video.url = params[:url]
  video.description = params[:description]
  video.genre = params[:genre]
  video.save

  redirect to('/')
end

post '/movies/:id/delete' do # delete
  movie = Video.find(params[:id])
  movie.delete
  redirect to('/')
end

post '/movies/:id' do # edit
  video = Video.find(params[:id])
  video.title = params[:title]
  video.url = params[:url]
  video.description = params[:description]
  video.genre = params[:genre]
  video.save

  redirect to("/")
end
