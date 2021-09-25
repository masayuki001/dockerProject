class FoldersController < ApplicationController
  def index
  end

  def new
    @folder = Folder.new
  end

  def create
    @folder = Folder.new(article_params)

    if @folder.save
      # showへ遷移
      redirect_to folder_tasks_path(folder_id:@folder.id)
    else
      render :new
    end
  end

  private
  def article_params
    params.require(:folder).permit(:title)
  end
end
