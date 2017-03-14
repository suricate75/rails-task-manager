class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
   @tasks = Task.new
  end

  def create
    task = Task.new(name: params[:name])
    task.save
    redirect_to task_path(task)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(name: params[:name])

    redirect_to task_path(@task)
  end
    #@task.update()

  def destroy
    @restaurant.destroy
    redirect_to task_path
  end

end


