require 'sinatra'
require 'sinatra/reloader'
require 'pg'
require 'pry'


before do
@genre = run_sql("SELECT DISTINCT genre FROM videos;")
end

get '/' do
  # db = PG.connect(:dbname => 'memetube') # a connection to the database
  sql = "SELECT * FROM videos;"
  @result = run_sql(sql)

  erb :index


end

get '/videos' do

  @result = run_sql("SELECT * FROM videos;")
  erb :index

end

get '/genre/:genre' do
  @sql = "SELECT * FROM videos WHERE genre = '#{params[:genre]}'"
  @rows = run_sql(@sql)
   erb :show
end

get '/videos/:id/edit' do
  sql = "SELECT * FROM videos WHERE id = #{params[:id]}"
  @rows = run_sql(sql)
  @row = @rows.first
  erb :edit
end

post '/videos/:id' do
  sql = "UPDATE videos SET title='#{params[:title]}', description='#{params[:description]}', url='#{params[:url]}', genre='#{params[:genre]}' WHERE id=#{params[:id]}"
  run_sql(sql)
  redirect to("/videos/#{params[:id]}")
  end


get '/videos/new' do
erb :new
  end

get '/videos/:id' do
    sql = "select * from videos where id = #{params[:id]}"

    @rows = run_sql(sql)
    # db.close
    erb :show
end

post '/videos' do #adds new videos into table
  sql = "INSERT INTO videos (title, description, url, genre) VALUES ('#{params['title']}','#{params['description']}', '#{params['url']}', '#{params['genre']}')"

  run_sql(sql)
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


