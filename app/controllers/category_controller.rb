class CategoryController < ApplicationController

  def show
    if (id = params[:id])
      render json: Category.find(id), status: 200
    else
      render json: Category.all, status: 200
    end
  end

  def create
    @entity = Category.create(title: params[:title])
    if @entity.valid?
      render json: {id: @entity.id}, status: 200
    else
      render json: @entity.errors, status: 400
    end
  end

end
