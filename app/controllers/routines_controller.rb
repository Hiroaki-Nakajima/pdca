class RoutinesController < ApplicationController
  def new
    @routine = Routine.new
  end

  def create
    Routine.create(routine_params)
    redirect_to root_path
  end

  def done
    @routine = Routine.find(params[:id])
    @routine.update(count: (@routine.count += 1))
    redirect_to root_path
  end

  private
  def routine_params
    params.require(:routine).permit(:content)
  end
end
