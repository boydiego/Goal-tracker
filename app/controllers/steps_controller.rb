class StepsController < ApplicationController
  def create
    @goal = Goal.find(params[:goal_id])
    @step = @goal.steps.create(step_params)
    redirect_to goal_path(@goal)
  end
  
  private

  def step_params
    params.require(:step).permit(:title)
  end
end
