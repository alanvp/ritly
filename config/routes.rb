Ritly::Application.routes.draw do
  root to: 'ritly#index'

#  get '/ritly/new', to: 'ritly#new'

  get '/ritly/:id/show', to: 'ritly#show', as: :show

  post '/ritly', to: 'ritly#create', as: :create 

end
