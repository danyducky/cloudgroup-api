class ProjectsController < ApplicationController

  def index
    render json: Category.order_by_id
                         .map {|category|
      {
        id: category.id,
        title: category.title,
        todos: category.tasks.order_by_id
      }
    }, status: 200
  end

end