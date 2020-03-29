Rails.application.routes.draw do
  root :to => 'pages#index'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :users, :only => [:new, :create, :show]
  resources :tasks, :only => [:new, :create, :index, :show]
end
