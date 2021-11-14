class TasksController < ApplicationController

  def create
    @category = Category.find_or_create_by(id: params[:categoryId]) do |category|
      category.id = Category.maximum(:id).to_i + 1
      category.title = params[:categoryTitle]
    end

    @task = @category.tasks
                     .create(text: params[:text], 'is_completed': false)

    if @task.valid?
      render json: {id: @task.id}, status: 200
    else
      render json: @task.errors, status: 400
    end
  end

  def update
    @entity = Category.find(params[:categoryId])
                      .tasks
                      .find(params[:id])

    @status = @entity.toggle!(:is_completed)

    render json: {success: @status, task: @entity}, status: 200
  end

end
