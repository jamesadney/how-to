class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params[:task])

    @task.save
    flash[:notice] = "Your task was created!"
    redirect_to @task
  end

  def show
    @task = Task.find(params[:id])
  end
end
