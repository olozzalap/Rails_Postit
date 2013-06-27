class PostsController < ApplicationController
  def index
  	@posts = Post.all
  end

  def show
  	@post = Post.find(params[:id])
  end

  def new
  end

  def create
  	Post.create(title: params[:title], description: params[:description], url: params[:url])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if params[:title] != nil and params[:title] != ""
      @post.update_attributes(title: params[:title])
    end
    if params[:description] != nil and params[:description] != ""
      @post.update_attributes(description: params[:description])
    end
    if params[:url] != nil and params[:url] != ""
      @post.update_attributes(url: params[:url])
    end
    render :new
  end

  def destory
  end
end
