class PlansController < ApplicationController
  def new
    @plan = Plan.new
  end

  def create
    Plan.create(plan_params)
    redirect_to root_path
  end

  def show
    @plan = Plan.find(params[:id])
  end

  def edit
    @plan = Plan.find(params[:id])
  end

  def update
    @plan = Plan.find(params[:id])
    @plam.update(plan_params)
    redirect_to root_path
  end

  def dstroy
    @plan = Plan.find(params[:id])
    @plan.destroy
    redirect_to root_path
  end

  private
  def plan_params
    params.require(:plan).permit(:content)
  end
end
