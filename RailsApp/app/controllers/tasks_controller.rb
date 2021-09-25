class TasksController < ApplicationController
  def index
    @folders = Folder.all
    @current_folder = Folder.find(params[:folder_id])
    @tasks = Task.where(folder_id: @current_folder.id)
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)

    if @task.save
      redirect_to folder_tasks_path(folder_id: @task.folder_id)
    else
      render :new
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])

    if @task.update(task_params)
      redirect_to folder_tasks_path(folder_id: @task.folder_id)
    else
      render :edit
    end
  end

  private
  def task_params
    params.require(:task).permit(:title, :status, :due_date).merge!(:folder_id => params[:folder_id])
  end
end
