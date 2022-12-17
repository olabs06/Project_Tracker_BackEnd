Rails.application.routes.draw do
  get 'users/index'
  resources :cohorts, only: [:index, :show, :create, :update]
  resources :groups, only: [:index, :show, :create, :update]
  resources :users, only: [:index, :show, :create, :update]
  resources :projects, only: [:index, :show, :create, :update]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # route to test your configuration
  post '/login', to: 'sessions#create'
  delete "/logout", to: "sessions#destroy"
  get '/me', to: 'users#show'
  # post '/signup', to: 'users#create'
  #
end
