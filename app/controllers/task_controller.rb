class TaskController < ApplicationController

  def show
    if (id = params[:id])
      render json: Task.find(id)
    else
      render json: Task.all
    end
  end

end
