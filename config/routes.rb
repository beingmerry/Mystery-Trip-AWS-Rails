Rails.application.routes.draw do
  root 'welcome_page#welcome'

  
  get 'welcome_page/welcome'
  resources :days
  resources :trips
  resources :trip_days
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
