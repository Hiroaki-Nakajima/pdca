class PlansController < ApplicationController
  def new
    @plan = Plan.new
  end

  def create
    Plan.create(plan_params)
    redirect_to root_path
  end

  private
  def plan_params
    params.require(:plan).permit(:content)
  end
end
