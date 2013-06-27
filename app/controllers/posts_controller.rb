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
    if params[:title] != nil and params[:title] != "" and params[:url] != nil and params[:url] != ""
  	  Post.create(title: params[:title], description: params[:description], url: params[:url])
    else
      redirect_to '/posts/new', :flash => {:error => "Please make sure the new post has a title and url at minimum."}
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if params[:title] == nil or params[:title] == "" or params[:url] == nil or params[:url] == ""
      redirect_to "/posts/#{params[:id]}/edit", :flash => {:error => "Please make sure you update the title and url at minimum."}
    else
      @post.update_attributes(title: params[:title])
      if params[:description] != nil and params[:description] != ""
        @post.update_attributes(description: params[:description])
      end
      @post.update_attributes(url: params[:url])
      render :show
    end
  end

  def destory
  end
end
