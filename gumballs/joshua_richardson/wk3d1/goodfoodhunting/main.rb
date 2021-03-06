require 'sinatra'
require 'pg'
require 'pry'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :host => 'localhost',
  :database => 'goodfoodhunting',
  :pool => 500 # temporary fix increasing pool size limit
)

class Dish < ActiveRecord::Base # inherits from active record, the Base module
  validates_presence_of :name
end


# this will go between for before and end

# @meal_types = Dish.pluck(meal_type).uniq

# before do
#   @meal_types = run_sql("SELECT DISTINCT meal_type FROM dishes;")
# end may use .uniq
# Dish.all.map {|dish| dish.meal_type}.uniq

get '/' do
  @meal_type = params[:meal_type]
  @rows = Dish.all
  erb :index
end

get '/dishes' do
  @rows = Dish.all
  erb :index
end

get '/dishes/new' do
  d1 = Dish.new
  d1.name = params[:name]
  d1.image_url = params[:image_url]
  d1.meal_type = params[:meal_type]
  d1.save
  erb :new
end

get '/dishes/:id' do
  @row = Dish.find(params[:id])
  erb :show
end

get '/dishes/:id/edit' do
  @row = Dish.find(params[:id])
  erb :edit
end

post '/dishes' do
  # dish = Dish.new(name: params[:name], image_url: params[:image_url], params[:meal_type])
  dish = Dish.new
  dish.name = params[:name]
  dish.image_url = params[:image_url]
  dish.meal_type = params[:meal_type]
  dish.save
  redirect to('/')
end

post '/dishes/:id' do # edit
  dish = Dish.find(params[:id])
  dish.name = params[:name]
  dish.image_url = params[:image_url]
  dish.meal_type = params[:meal_type]
  dish.save

  redirect to("/dishes/#{params[:id]}")
end

post '/dishes/:id/delete' do
  @dish = Dish.find(params[:id])
  @dish.delete
  redirect to('/')
end

after do
    ActiveRecord::Base.connection.close
  end