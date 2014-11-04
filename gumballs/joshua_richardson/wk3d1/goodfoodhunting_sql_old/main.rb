require 'sinatra'
require 'pg'
require 'pry'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :host => 'localhost',
  :database => 'goodfoodhunting'
)

class Dish < ActiveRecord::Base # inherits from active record, the Base module

before do
  @meal_types = run_sql("SELECT DISTINCT meal_type FROM dishes;")
end

get '/' do
  meal_type = params[:meal_type]
  sql = "select * from dishes;"
  @rows = run_sql(sql)
  erb :index
end

get '/dishes' do
  db = PG.connect(:dbname => 'goodfoodhunting') # connect to db
  @rows = run_sql("select * from dishes;")
  erb :index
end

get '/dishes/new' do
  erb :new
end

get '/dishes/:id' do
  db = PG.connect(:dbname => 'goodfoodhunting') # connect to db
  sql = "select * from dishes where id = #{params[:id]}"
  @rows = run_sql(sql)

  erb :show
end

post '/dishes' do
  sql = "INSERT INTO dishes (name,image_url,meal_type) VALUES ('#{params['name']}','#{params['image_url']}', '#{params['meal_type']}')"
  run_sql(sql)
  redirect to('/')
end

post '/dishes/:id/delete' do
  sql = "DELETE FROM dishes WHERE id = #{params[:id]}"
  run_sql(sql)
  redirect to('/')
end

get '/dishes/:id/edit' do
    sql = "SELECT * FROM dishes WHERE id = #{params[:id]}"
    @rows = run_sql(sql) # beacause the method always returned a collection bit there is only one
    @row = @rows.first # pluck the first row
    erb :edit
end

post '/dishes/:id' do
  sql = "UPDATE dishes SET name='#{params[:name]}', image_url='#{params[:image_url]}', meal_type='#{params[:meal_type]}' WHERE id = #{params[:id]}"
  run_sql(sql)
  redirect to("/dishes/#{params[:id]}")
end

# methods
def run_sql(sql)
  db = PG.connect(:dbname => 'goodfoodhunting') # connect to db
  rows = db.exec(sql)
  db.close
  rows
end
