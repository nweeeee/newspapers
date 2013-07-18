class UsersController < ApplicationController

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user][:id])
    if @user.save
      flash[:notices] = "user's subscriptions saved successfully!"
      redirect_to newspapers_url
    else
      render :new
    end
  end
  
end
