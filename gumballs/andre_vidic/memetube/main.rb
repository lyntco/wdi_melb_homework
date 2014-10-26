require 'sinatra'
require 'pg'
require 'pry'

before do
  @genres = run_sql("select distinct genre from videos;")
end

get '/' do
  sql = "select * from videos;"
  @rows = run_sql(sql)
  erb :index
end

get '/videos' do
  sql = "select * from videos;"
  @rows = run_sql(sql)
  erb :index
end

post '/videos/:id/delete' do
  sql = "DELETE FROM videos WHERE id='#{params['id']}'"
  run_sql(sql)
  redirect to("/")
end

get '/videos/genre' do
  sql = "SELECT * FROM videos WHERE genre='#{params["genre"]}'"
  @rows = run_sql(sql)
  @row = @rows[0]
  erb :index
end

get '/videos/:id/edit' do
  sql = "SELECT * FROM videos WHERE id='#{params['id']}'"
  @rows = run_sql(sql)   #plural because the method always returns a collection
  @row = @rows[0] # pluck the first rows
  erb :edit
end

post '/videos/:id' do
  sql = "UPDATE videos SET title='#{params['title']}',description='#{params['description']}',url='#{params['url']}, genre='#{params['genre']}' WHERE id = #{params['id']}"
  run_sql(sql)
  redirect to("/videos/#{params['id']}")
end

get '/videos/new' do
  erb :new
end

post '/videos/:id' do
  sql = "UPDATE videos SET title='#{params['title']}',description='#{params['description']}',url='#{params['url']}, genre='#{params['genre']}' WHERE id = #{params['id']}"
  run_sql(sql)
  redirect to('/')
end

get '/videos/new' do
  erb :new
end

get '/videos/:id' do
  sql = "select * from videos where id='#{params['id']}'"
  @rows = run_sql(sql)
  erb :show
end

post '/videos' do
  sql = "INSERT INTO videos (title,description,url,genre) VALUES ('#{params['title']}','#{params['description']}','#{params['url']}', '#{params['genre']}')"
  run_sql(sql)
  redirect to('/')
end

def run_sql(sql)
  db = PG.connect(:dbname => 'videos')
  rows = db.exec(sql)
  db.close
  rows
end