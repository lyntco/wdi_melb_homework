class MountainsController < ApplicationController
  def new
    # render :new #explicitly defines the page to route to
    @mountain = Mountain.new
  end

  def create
    @mountain = Mountain.new
    @mountain.name = params[:mountain][:name]
    @mountain.image_url = params[:mountain][:image_url]
    @mountain.height = params[:mountain][:height]

    if @mountain.save #success - redirect
      redirect_to '/mountains'
    else
      #show new form if it fails
      render :new
    end
  end

  def index
    @mountains = Mountain.all
  end

  def show
    @mountain = Mountain.find(params[:id])
    # @mountain = Mountain.where(id => params[:id]).first
  end

  def edit
    @mountain = Mountain.find(params[:id])
  end

  def update
    @mountain = Mountain.find(params[:id])
    @mountain.name = params[:mountain][:name]
    @mountain.image_url = params[:mountain][:image_url]
    @mountain.height = params[:mountain][:height]

    if @mountain.save #success - redirect
      redirect_to '/mountains'
    else
      #show new form if it fails
      render :edit
    end
  end

  def destroy
    @mountain = Mountain.find(params[:id]).delete
    redirect_to '/mountains'
  end
end