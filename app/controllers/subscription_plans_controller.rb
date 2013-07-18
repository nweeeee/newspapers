class SubscriptionPlansController < ApplicationController

  def new
    @newspaper = Newspaper.find(params[:newspaper_id])
    @subscription_plan = SubscriptionPlan.new
  end
  
  def create
    @newspaper = Newspaper.find(params[:newspaper_id])
    @subscription_plan = SubscriptionPlan.new(params[:subscription_plan])
    if @subscription_plan.save
      @subscription_plan.newspaper_id = @newspaper.id
      @subscription_plan.save
      redirect_to newspaper_url(@newspaper.id)
    else
      render :new
    end
  end
  
end
