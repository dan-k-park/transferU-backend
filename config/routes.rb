Rails.application.routes.draw do
  resources :event_profiles
  resources :events
  resources :profiles
  resources :schools
  resources :categories
  resources :users #only: [:create]
  post '/login', to: 'auth#create'
  post '/register', to: 'users#create'
  get '/current_user', to: 'auth#show'
end
