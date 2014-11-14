class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.name = params[:post][:name]
    @post.image_url = params[:post][:image_url]
    @post.content = params[:post][:content]

    if @post.save # success
      redirect_to '/posts' # redirect
    else
      render :edit
    end
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    @post.name = params[:post][:name]
    @post.image_url = params[:post][:image_url]
    @post.content = params[:post][:content]

    if @post.save # success
      redirect_to '/posts' # redirect
    else
      render :new
    end
  end

end