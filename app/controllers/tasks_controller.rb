class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create task_params
    @current_user.requesters.first.tasks << @task
    redirect_to tasks_path
  end

  def show
  end

  private
  def task_params
    params.require(:task).permit(:name, :description, :category, :urgency)
  end
end
