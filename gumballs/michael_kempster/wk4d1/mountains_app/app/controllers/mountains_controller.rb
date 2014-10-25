class MountainsController < ApplicationController

	def index
		@mountains = Mountain.all
	end

	def show
		@mountain = Mountain.find(params[:id])
	end

	def edit
		@mountain = Mountain.find(params[:id])
	end

	def update
		@mountain = Mountain.find(params[:id])
		@mountain.name = params[:mountain][:name]
		@mountain.height = params[:mountain][:height]
		@mountain.country = params[:mountain][:country]
		@mountain.range = params[:mountain][:range]
		@mountain.comments = params[:mountain][:comments]

		if @mountain.save # successful
			redirect_to '/mountains'
		else
			render :edit
		end
	end

	def new
		@mountain = Mountain.new
	end

	def create
		@mountain = Mountain.new
		@mountain.name = params[:mountain][:name]
		@mountain.height = params[:mountain][:height]
		@mountain.country = params[:mountain][:country]
		@mountain.range = params[:mountain][:range]
		@mountain.comments = params[:mountain][:comments]

		if @mountain.save # successful
			redirect_to '/mountains'
		else
			render :new
		end
	end

	def destroy
		@mountain = Mountain.find(params[:id])
		@mountain.destroy
		redirect_to '/mountains'
	end

end