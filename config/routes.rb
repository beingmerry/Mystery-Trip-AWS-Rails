Rails.application.routes.draw do
  resources :trip_days
  resources :days
  root 'welcome_page#welcome'

  
  get 'welcome_page/welcome'
  resources :trips
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
