class ProjectsController < ApplicationController

  def index

    render json: Category.order_by_id
                         .as_json(only: [:id, :title], include: :tasks),
           status: 200
  end

end