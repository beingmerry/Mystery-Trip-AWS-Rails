Rails.application.routes.draw do
  resources :trip_days
  resources :days

  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :trips
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end