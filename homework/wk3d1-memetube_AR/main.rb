require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pry'


ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :host => 'localhost',
  :database => 'memetube',
  :pool => 5 # temp fix by increasing the pool size limit
  )

class Video < ActiveRecord::Base

end

before do
@genres = Video.pluck(:genre).uniq
end

after do
    ActiveRecord::Base.connection.close
end

get '/' do #index
  if params[:genre] && !params[:genre].empty?
    @videos = Video.where(:genre => params[:genre])
  else
    @videos = Video.all
    erb :index
  end
end

get '/videos' do #display all videos like index

  @videos = Video.all
  erb :index

end

get '/genre/:genre' do
  @videos = Video.where(:genre => params[:genre])
   erb :genre
end

get '/videos/new' do
  erb :new
end

get '/videos/:id/edit' do
  @videos = Video.find(params[:id])
  erb :edit
end

post '/videos/:id' do
  videos = Videos.find(params[:id]) # update
  video.name = params[:title]
  video.description = params[:description]
  video.url = params[:url]
  video.url = params[:genre]
  video.save

  redirect to("/video/#{params[:id]}")
  end

get '/videos/:id' do #click-through from single video
    @videos = Video.find(params[:id])
    erb :show
end

post '/videos' do #adds new videos into table
  video = Video.new
  video.title = params[:title]
  video.description = params[:description]
  video.url = params[:url]
  video.url = params[:genre]
  video.save

  redirect to('/')
end

post '/videos/:id/delete' do
  sql = "DELETE FROM videos WHERE id = #{params[:id]}"
  run_sql(sql)
  redirect to('/')
end

def run_sql(sql)
  db = PG.connect(:dbname => 'memetube', :host => 'localhost')
  result = db.exec(sql)
  db.close
  result
end


