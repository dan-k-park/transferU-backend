Rails.application.routes.draw do
  resources :event_profiles
  resources :events
  resources :profiles
  resources :schools
  resources :categories
  post '/auth', to: 'users#create'
  get '/current_user', to: 'users#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
