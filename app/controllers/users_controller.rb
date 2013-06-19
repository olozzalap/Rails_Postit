class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new

  end

  def create
    User.create(username: params[:username])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
  end

  def destory
    @user = User.find(params[:id])
  end
end
