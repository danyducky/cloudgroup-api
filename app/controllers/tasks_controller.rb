class TasksController < ApplicationController

  def create
    @entity = Category.find_by(id: params[:categoryId])
    # Не нашёл двойной тернарный оператор в Ruby (?? - в c#)
    # @category = Category.find_by(id: params[:categoryId]) ?? Category.create(title: params[:categoryTitle])
    @category = @entity.nil? ? Category.create(title: params[:categoryTitle]) : @entity

    @task = @category.tasks.create(text: params[:text])

    if @task.valid?
      render json: @category.as_json(include: :tasks), status: 200
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
