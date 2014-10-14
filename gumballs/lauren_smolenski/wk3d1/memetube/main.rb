require 'sinatra'
require 'pg'
require 'rerun'
require 'pry'

get '/' do
  sql = "select * from memes;"
  @result = run_sql("select * from memes;")
  @genre = run_sql("SELECT DISTINCT genre FROM memes;")
  erb :index
end

get '/memes' do
  if params[:genre]
    sql = "SELECT * FROM memes WHERE genre = '#{params[:genre]}';"
  else
    sql = "select * from memes;"
  end
  @result = run_sql(sql)
  @genre = run_sql("SELECT DISTINCT genre FROM memes;")
  erb :index
end

get '/memes/:id/edit' do
  sql = "SELECT * FROM memes WHERE id = #{params[:id]}"
  @results = run_sql(sql)
  @result = @results[0]
  @genre = run_sql("SELECT DISTINCT genre FROM memes;")
  erb :edit
end

post '/memes/:id' do
  sql = "UPDATE memes SET title='#{params[:title]}',description='#{params[:description]}',video_url='#{params[:video_url]}',genre='#{params[:genre]}' WHERE id = #{params[:id]}"
  run_sql(sql)
  redirect to ("/memes/#{params[:id]}")
end


post '/memes/:id/delete' do
  sql = "DELETE FROM dishes WHERE id = #{params[:id]}"
  run_sql(sql)
  redirect to('/')
end

get '/memes/new' do
  @genre = run_sql("SELECT DISTINCT genre FROM memes;")
  erb :new
end

get '/memes/:id' do
  sql = "select * from memes where id = #{params[:id]}"
  @result = run_sql(sql)
  @genre = run_sql("SELECT DISTINCT genre FROM memes;")
  erb :show
end

post '/memes' do
  sql = "INSERT INTO  memes (title,description,video_url,genre) VALUES ('#{params['title']}','#{params['description']}','#{params['video_url']}','#{params['genre']}')"
  run_sql(sql)
  redirect to ('/')
end




def run_sql(sql)
  db = PG.connect(:dbname => 'memetube') # if doesn't work put :host => 'localhost' after.
  result = db.exec(sql)
  db.close
  result
end


