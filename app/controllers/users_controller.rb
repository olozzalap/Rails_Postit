class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new("#{params[:username]}")
    if @user.save
      redirect_to root_path, notice: 'You are now registered!'
    else
      @user.errors.delete(:password_digest)
      render :new
    end
  end

end
