class MountainsController < ApplicationController

  def index
    @mountains = Mountain.all
  end

  def new
    @mountain = Mountain.new
  end

  def create
    @mountain = Mountain.new
    @mountain.name = params[:mountain][:name]
    @mountain.image_url = params[:mountain][:image_url]
    @mountain.height = params[:mountain][:height]

    if @mountain.save # success
      redirect_to '/mountains'
    else
      render :new
    end
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
    @mountain.image_url = params[:mountain][:image_url]

    if @mountain.save # success
      redirect_to '/mountains'
    else
      render :edit
    end
  end

  def delete
    Mountain.find(params[:id]).destroy
    redirect_to '/mountains'
  end
end