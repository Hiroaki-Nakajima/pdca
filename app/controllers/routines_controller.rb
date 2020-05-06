class RoutinesController < ApplicationController
  def new
    @routine = Routine.new
  end

  def create
    Routine.create(routine_params)
    redirect_to root_path
  end

  def show
    @routine = Routine.find(params[:id])
  end

  def edit
    @routine = Routine.find(params[:id])
  end

  def update
    @routine = Routine.find(params[:id])
    @routine.update(routine_params)
    redirect_to root_path
  end

  def destroy
    @routine = Routine.find(params[:id])
    @routine.destroy
    redirect_to root_path
  end

  def done
    @routine = Routine.find(params[:id])
    @routine.update(count: (@routine.count += 1))
    redirect_to root_path
  end

  private
  def routine_params
    params.require(:routine).permit(:title, :content)
  end
end
