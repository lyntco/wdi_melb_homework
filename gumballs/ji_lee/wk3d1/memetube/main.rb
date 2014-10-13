require 'sinatra'
# require 'sinatra/reloader'
require 'pg'
require 'pry'

get '/' do
  sql = "select * from videos;"
  @result = run_sql(sql)
  erb :index
end

get '/videos' do
  @result = run_sql("select * from videos;")
  erb :index
end

get '/videos/:id/edit' do
  sql = "SELECT * FROM videos WHERE id = #{params[:id]}"
  @results = run_sql(sql)
  @result = @results[0]
  erb :edit
end

post '/videos/:id' do
  sql = "UPDATE videos SET title='#{params[:title]}', description='#{params[:description]}', video_url='#{params[:video_url]}', genre='#{params[:genre]}' WHERE id= #{params[:id]}"
  run_sql(sql)
  redirect to ("/videos/#{params[:id]}")
end

get '/videos/new' do
  erb :new
end

get '/videos/:id' do 
  sql = "select * from videos where id = #{params[:id]}"
  @result = run_sql(sql)
  erb :show
end

post '/videos' do
  sql = "INSERT INTO videos (title,description,video_url,genre) VALUES ('#{params['title']}','#{params['description']}','#{params['video_url']}','#{params['genre']}')"

  run_sql(sql)
  redirect to('/')
end

def run_sql(sql)
  db = PG.connect(:dbname => 'memetube') 
  result = db.exec(sql)
  db.close
  return result
end

