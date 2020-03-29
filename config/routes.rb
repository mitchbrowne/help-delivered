Rails.application.routes.draw do
  root :to => 'pages#index'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/users/role' => 'users#role'
  post '/users/role' => 'users#update_role'

  resources :users
  resources :tasks, :only => [:new, :create, :index, :show]
end
