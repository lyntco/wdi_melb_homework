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
    @mountain.image_url = params[:mountain][:image_url]
    @mountain.elevation_meters = params[:mountain][:elevation_meters]
    @mountain.country = params[:mountain][:country]
    @mountain.latitude = params[:mountain][:latitude].to_f
    @mountain.longitude = params[:mountain][:longitude].to_f

    if @mountain.save
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
    @mountain.image_url = params[:mountain][:image_url]
    @mountain.elevation_meters = params[:mountain][:elevation_meters]
    @mountain.country = params[:mountain][:country]
    @mountain.latitude = params[:mountain][:latitude].to_f
    @mountain.longitude = params[:mountain][:longitude].to_f

    if @mountain.save
      redirect_to '/mountains'
    else
      render :new
    end
  end

end