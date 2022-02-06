class StepsController < ApplicationController
  def create
    @goal = Goal.find(params[:goal_id])
    @step = @goal.steps.create(step_params)
    redirect_to goal_path(@goal)
  end

  def destroy
    @goal = Goal.find(params[:goal_id])
    @step = @goal.steps.find(params[:id])
    @step.destroy
    redirect_to goal_path(@goal)
  end
  
  private

  def step_params
    params.require(:step).permit(:title)
  end
end
