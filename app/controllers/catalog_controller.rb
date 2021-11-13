class CatalogController < ApplicationController

  def show
    if (id = params[:id])
      render json: Catalog.find(id), status: 200
    else
      render json: Catalog.all, status: 200
    end
  end

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

end
