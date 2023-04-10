Rails.application.routes.draw do
  root "welcome#index"
  post 'welcome/create', to: 'welcome#create', as:'welcome_create'
  #post '/registro', to: 'users#new', as: 'registro'
  get '/users/new', to: 'users#new', as: 'new_user'
  resources :users, only: [:create]

  # Defines the root path route ("/")
  # root "articles#index"
end
