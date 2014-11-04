require 'sinatra'
require 'pg'
require 'pry'

before do
  @genres = run_sql("SELECT DISTINCT genres FROM videos;")
end


get '/' do
  db = PG.connect(:dbname => 'memetube') # connect to db
  sql = "select * from videos;"
  @rows = run_sql(sql)
  erb :index
end

get '/movies' do
  db = PG.connect(:dbname => 'memetube') # connect to db
  @rows = run_sql("select * from videos;")
  erb :index
end

get '/movies/new' do
  erb :new
end

get '/movies/:id' do
  db = PG.connect(:dbname => 'memetube') # connect to db
  sql = "select * from videos where id = #{params[:id]}"
  @rows = run_sql(sql)

  erb :show
end

post '/movies' do
  sql = "INSERT INTO videos (title,url,description,genre) VALUES ('#{params['title']}','#{params['url']}', '#{params['description']}', '#{params['genre']}')"

  run_sql(sql)
  redirect to('/')
end

post '/movies/:id/delete' do
  sql = "DELETE FROM videos WHERE id = #{params[:id]}"
  run_sql(sql)
  redirect to('/')
end

get '/movies/:id/edit' do
    sql = "SELECT * FROM videos WHERE id = #{params[:id]}"
    @rows = run_sql(sql) # beacause the method always returned a collection
    @row = @rows.first # pluck the first row
    erb :edit
end

post '/movies/:id' do
  sql = "UPDATE videos SET title='#{params[:title]}', url='#{params[:url]}', description='#{params[:description]}', genre='#{params[:genre]}' WHERE id = #{params[:id]}"
  run_sql(sql)
  redirect to("/movies/#{params[:id]}")
end

# methods
def run_sql(sql)
  db = PG.connect(:dbname => 'memetube') # connect to db
  rows = db.exec(sql)
  db.close
  rows
end
