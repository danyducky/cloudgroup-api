Rails.application.routes.draw do

  get '/projects', to: 'projects#index'
  post '/todos', to: 'tasks#create'
  patch '/projects/:categoryId/todo/:id', to: 'tasks#update'

end
