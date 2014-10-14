require 'sinatra'
require 'pg'

# TO DO
# =====
# Get the edit page working - bombs out with the ditty message

get '/' do
	sql = "select * from videos;"
	@result = run_sql(sql)
	erb :index
end

get '/memetube' do
	sql = "select * from videos;"
	@result = run_sql(sql)
	erb :index
end

get '/memetube/show' do
	sql = "select * from videos;"
	@result = run_sql(sql)
	erb :show
end

get '/memetube/:id/edit' do
	sql = "select * from videos where id = #{params[:id]};"
	@results = run_sql(sql)
	@result = @results[0]
	erb :edit
end

post '/memetube/:id' do
	sql = "update videos set title='#{params[:title]}', description='#{params[:description]}', url='#{params[:url]}', genre='#{params[:genre]}' where id = #{params[:id]}"
	# force sql ---- for focing an exception to see what has been passed
	run_sql(sql)
	redirect to("/memetube/#{params[:id]}")
end

get '/memetube/new' do
	erb :new
end

get '/memetube/:id' do
	sql = "select * from videos where id = #{params[:id]};"
	@result = run_sql(sql)
	erb :show
end

post '/memetube' do
	sql = "insert into videos (title, description, url, genre) values ('#{params['title']}', '#{params['description']}', '#{params['url']}', '#{params['genre']}')"
	run_sql(sql)
	redirect to('/')
end

get '/memetube/:id/delete' do
	sql = "select * from videos where id = #{params[:id]};"
	@results = run_sql(sql)
	@result = @results[0]
	erb :delete
end

# There is still an ID for the deleted entry in the database, also it shows only the deleted row and not the remaining database rows
post '/memetube/:id' do
	sql = "delete from videos where id = #{params[:id]}'"
	run_sql(sql)
	redirect to('/memetube/show') # This is curenty not redirecting to /memetube/show as per the comment above
end

def run_sql(sql)
	db = PG.connect(:dbname => 'memetube')
	result = db.exec(sql)
	db.close
	return result
end