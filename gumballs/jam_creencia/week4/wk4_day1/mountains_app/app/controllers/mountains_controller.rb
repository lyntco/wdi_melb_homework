class MountainsController < ApplicationController

	def index
		@mountains = Mountain.all
	end

	def show
		@mountain = Mountain.find(params[:id])
	end

	def new
		@mountain = Mountain.new
	end

	def create
		@mountain = Mountain.new
		@mountain.name = params[:mountain][:name]
		@mountain.elevation = params[:mountain][:elevation]
		@mountain.location = params[:mountain][:location]
		@mountain.range = params[:mountain][:range]
		@mountain.image = params[:mountain][:image]

		if @mountain.save == true 
			redirect_to '/mountains'
		else
			render :new   
		end
	end

	def edit
		@mountain = Mountain.find(params[:id])
	end

	def update
		@mountain = Mountain.find(params[:id])
		@mountain.name = params[:mountain][:name]
		@mountain.elevation = params[:mountain][:elevation]
		@mountain.location = params[:mountain][:location]
		@mountain.range = params[:mountain][:range]
		@mountain.image = params[:mountain][:image]

		if @mountain.save == true 
			redirect_to '/mountains'
		else
			render :edit  
		end
		
	end


	def destroy
		@mountain = Mountain.find(params[:id])
		@mountain.destroy
			redirect_to '/mountains'
	end


end