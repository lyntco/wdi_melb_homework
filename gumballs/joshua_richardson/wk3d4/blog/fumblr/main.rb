require 'pry'
require 'sinatra'
require 'active_record'

config = {
  adapter: 'postgresql',
  host: 'localhost',
  database: 'fumblr'
}

ActiveRecord::Base.establish_connection(config)

require_relative './models/post.rb'

after do
  ActiveRecord::Base.connection.close
end

# helpers do # can be used in views

#   def exists?(param)
#     param && param.empty?
#   end

#   def link(label, route)
#     "<a href='#{route}'">#{label}</a>
#   end

# end

get '/' do
  # if exists?(param[:meal_type_id])

  @post = Post.all
  erb :index
end

get '/posts/new' do
  erb :new
end

post '/posts' do
  post = Post.new(params)
  post.created_at = Time.now
  # post.title = params[:title]
  # post.content = params[:content]
  # post.image_url = params[:image_url]
  post.save

  redirect to "/"
end

get '/posts/:id' do
  @post = Post.find(params[:id])
  erb :show
end

get '/posts/:id/edit' do
  @post = Post.find(params[:id])
  erb :edit
end

post '/posts/:id/edit' do
  post = Post.find(params[:id])
  post.title = params[:title]
  post.content = params[:content]
  post.image_url = params[:image_url]
  post.created_at = Time.now

  post.save
  redirect to "/"
end

