class TasksController < ApplicationController

  def index
    @tasks = Task.all

    respond_to do |format|
      format.html {}
      format.json { render :json => @tasks}
    end
  end

  def create
    @task = Task.new(task_params)
      if @task.save
      render :json => @task

    else
      render :json => @task
    end
  end

  def destroy
    @task = Task.find (params[:id])
    @task.destroy
    render :json => @task
  end

  private
  def task_params
    params.require(:task).permit(:description)
  end
end
