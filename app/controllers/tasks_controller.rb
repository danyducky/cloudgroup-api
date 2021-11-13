class TasksController < ApplicationController

  def create
    @entity = Category.find(params[:categoryId])
                      .tasks
                      .create(text: params[:text], 'is_completed': false)

    if @entity.valid?
      render json: {id: @entity.id}, status: 200
    else
      render json: @entity.errors, status: 400
    end
  end

  def update
    @entity = Category.find(params[:categoryId])
                      .tasks
                      .find(params[:id])
    @entity.update('is_completed': !@entity.is_completed)

    render json: @entity, status: 200
  end

end
