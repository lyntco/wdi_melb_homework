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
    @mountain.content = params[:mountain][:content]

    if @mountain.save # success
      redirect_to '/mountains' # redirect
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
    @mountain.content = params[:mountain][:content]

    if @mountain.save # success
      redirect_to '/mountains' # redirect
    else
      render :edit
    end
  end

  def delete
    @mountain = Mountain.find(params[:id])
    @mountain.destroy
    redirect to('/')
  end

end