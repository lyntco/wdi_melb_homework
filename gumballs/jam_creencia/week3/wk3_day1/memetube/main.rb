require "sinatra"
require "pg"
require "active_record"
require 'pry'

ActiveRecord::Base.establish_connection(
:adapter=> 'postgresql',
:host => 'localhost',
:database => 'memetube'
) 

class Video < ActiveRecord::Base

end



# defines what @genres is for use in the layout.erb
before do
	@genres = Video.pluck(:genre).uniq

end


after do
	ActiveRecord::Base.connection.close
end


#homepage
get "/" do 

	@videos = Video.all
	
	erb :index

end


# gets all the videos with the matching genre 
get "/genre/:genre" do

	@videos = Video.where(:genre => params[:genre])
	
	erb :genre

end



#sends to the add video form
get "/videos/new" do

erb :new
end


#adds a new video
post "/videos/add_video" do

	video = Video.new
	video.name = params[:name]
	video.video_url = params[:video_url]
	video.description = params[:description]
	video.genre = params[:genre]
	video.save
	

	redirect to("/") 

end



#shows video details
get "/videos/:id" do 

	@video = Video.find(params[:id])

	
	erb :show
end


#takes you to edit page
post "/videos/:id/edit" do
	
	@video = Video.find(params[:id])
	erb :edit

end


# deletes the video then sends you to a page saying it's deleted
post "/videos/:id/delete" do

	@video = Video.find(params[:id])
	@video.delete

	erb :deleted

end


#updates the video
post "/videos/:id" do
	@video = Video.find(params[:id])
	@video.name = params[:name]
	@video.video_url = params[:video_url]
	@video.description = params[:description]
	@video.genre = params[:genre]
	@video.save

	erb :show

end





