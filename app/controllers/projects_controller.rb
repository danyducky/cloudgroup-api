class ProjectsController < ApplicationController

  def index
    render json: Category.all.map {|category|
      {
        id: category.id,
        title: category.title,
        todos: category.tasks
      }
    }, status: 200
  end

end