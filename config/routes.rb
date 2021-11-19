Rails.application.routes.draw do

  get ENV['PROJECT_ENDPOINT'], to: 'projects#index'
  post ENV['TODOS_ENDPOINT'], to: 'tasks#create'
  patch "#{ENV['PROJECT_ENDPOINT']}/:categoryId/todo/:id", to: 'tasks#update'

end
