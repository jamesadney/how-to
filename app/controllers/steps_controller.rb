class StepsController < ApplicationController
  def new
    @task = Task.find(params[:task_id])
    @step = @task.steps.build
  end

  def create
    @task = Task.find(params[:task_id])
    @step = @task.steps.build(params[:step])

    @step.save
    redirect_to @task
  end
end
