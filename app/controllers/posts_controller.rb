class PostsController < ApplicationController
  def index
  	@posts = Post.all
  end

  def show
  	@post = User.find(params[:id]).posts.first
  end

  def new

  end

  def create
  	Post.create(title: params[:title], description: params[:description], url: params[:url])
  end

  def edit
  end

  def update
  end

  def destory
  end
end
