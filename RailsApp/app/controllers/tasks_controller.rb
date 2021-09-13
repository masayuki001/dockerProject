class TasksController < ApplicationController
  def index
    @folders = Folder.all
    @current_folder = Folder.find(params[:folder_id])
    @tasks = Task.find_by(folder_id: @current_folder_id)
  end
end
