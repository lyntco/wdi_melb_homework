require "sinatra"
require "pg"
require "pry"

before do
	@genres = run_sql("SELECT DISTINCT genre FROM videos;")
end


get "/" do 

	db = PG.connect(:dbname => "memetube", :host => "localhost") 
	sql = "SELECT * FROM videos;"
	@rows = db.exec(sql)
	
	erb :index

end


get "/videos" do 

	@rows = run_sql("select * from videos;")
	
	erb :index

end


get "/genre/:genre" do
	sql = "SELECT * FROM videos WHERE genre='#{params[:genre]}';"
	@rows = run_sql(sql)

	erb :genre

end

get "/videos/new" do

erb :new
end



get "/videos/:id" do 

	@rows = run_sql("select * from videos where id = #{params[:id]};")
	
	erb :show
end


get "/videos/:id/edit" do
	sql = "SELECT * FROM videos WHERE id = #{params[:id]}"
	@rows = run_sql(sql)
	@row = @rows.first


	erb :edit

end

get "/videos/:id/delete" do
	sql = "DELETE FROM videos WHERE id=#{params[:id]};"
	run_sql(sql)
	redirect to ("/")

end



post "/videos/:id" do
	sql = "UPDATE videos SET name='#{params[:name]}', video_url='#{params[:video_url]}', description='#{params[:description]}', genre='#{params[:genre]}'  WHERE id = #{params[:id]}"
	run_sql(sql)
	redirect to ("/videos")

end



post "/videos" do
	sql = "INSERT INTO videos (name,video_url,description, genre) VALUES ('#{params['name']}','#{params['video_url']}', '#{params['description']}', '#{params['genre']}')"
	run_sql(sql)
	redirect to("/") 

end




def run_sql(sql)
	db = PG.connect(:dbname => "memetube", :host => "localhost") 
	rows = db.exec(sql)
	db.close
	rows
 	
end 