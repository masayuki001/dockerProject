class TasksController < ApplicationController
  def index
    @folders = Folder.all
    @current_folder = Folder.find(params[:folder_id])
    @tasks = Task.where(folder_id: @current_folder.id)
  end
end
