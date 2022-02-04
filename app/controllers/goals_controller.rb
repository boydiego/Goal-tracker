class GoalsController < ApplicationController
  before_action :set_goal, only: [:show, :edit, :update, :destroy]

  def index
    @goals = Goal.all
  end

  def show
  end

  def new
    @goal = Goal.new
  end
  
  def create
    @goal = Goal.new(goal_params)
    if @goal.save
      redirect_to goals_path, notice: "You set up your next goal!"
    else
      render :new
    end
  end
  
  def edit
  end

  def update
    if @goal.update(goal_params)
      redirect_to goal_path, notice: "Goal updated"
    else
      render :edit
    end
  end

  def destroy
    @goal.destroy
    redirect_to goals_path, notice: "Your Goal was deleted"
  end

  private

  def set_goal
    @goal = Goal.find(params[:id])
  end

  def goal_params
    params.require(:goal).permit(:id, :title, :image, :completed)
  end
end