Rails.application.routes.draw do
  get '/catalog', to: 'catalog#show'
  get '/catalog/:id', to: 'catalog#show'
  post '/catalog/create', to: 'catalog#create'

  get '/category', to: 'category#show'
  get '/category/:id', to: 'category#show'
  post '/category/create', to: 'category#create'

  get '/project', to: 'project#index'

  get '/task', to: 'task#show'
  get '/task/:id', to: 'task#show'
  delete '/task/:id', to: 'task#remove'

end
