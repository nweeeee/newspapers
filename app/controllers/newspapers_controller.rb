class NewspapersController < ApplicationController

  def show
    @newspaper = Newspaper.find(params[:id])
    @subscription_plans = @newspaper.subscription_plans
  end

  def create
    @newspaper = Newspaper.new(params[:newspaper])
    if @newspaper.save
      redirect_to newspaper_url(@newspaper.id)
    else
      render :new
    end
  end
  
  def show
    @newspaper = Newspaper.find(params[:id])
    @subscription_plans = @newspaper.subscription_plans
  end
  
  def index
    @newspapers = Newspaper.all
  end

end
