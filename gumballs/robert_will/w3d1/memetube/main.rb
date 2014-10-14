require 'sinatra'
require 'pg'
require 'pry'

before do
  @genre = run_sql("SELECT DISTINCT genre FROM videos;")
end





get '/' do

if params[:genre] != nil
  sql = "SELECT * FROM videos WHERE genre = 'Comedy';"
  else
    sql = "select * from videos;"
      @rows = run_sql(sql)
  end
  erb :index
end

get '/videos' do
  @rows = run_sql("select * from videos;")
  erb :index
end

post '/videos/:id/delete' do
  sql = "DELETE FROM videos WHERE id = #{params[:id]}"
  run_sql(sql)
  redirect to("/")
end

get '/videos/:id/edit' do
  sql = "SELECT * FROM videos WHERE id = #{params[:id]}"
  @rows = run_sql(sql)
  @row = @rows.first
  erb :edit
end

post '/videos/:id' do
  sql = "UPDATE videos SET title='#{params[:title]}', description='#{params[:description]}', url='#{params[:url]}', genre='#{params[:genre]}' WHERE id = #{params[:id]}"
  run_sql(sql)
  redirect to("/videos/#{params[:id]}")
end

get '/videos/new' do
  erb :new
end

get '/videos/:id' do
  sql = "select * from videos where id = #{params[:id]}"
  @rows = run_sql(sql)
  erb :show
end

post '/videos' do
  sql = "INSERT INTO videos (title,description,url,genre) VALUES ('#{params['title']}','#{params[:description]}','#{params['url']}','#{params['genre']}')"
  new_video = run_sql(sql)
  redirect to("/")
end

def  run_sql(sql)
  db = PG.connect(:dbname => 'memetube')
  rows = db.exec(sql)
  db.close
  rows
end