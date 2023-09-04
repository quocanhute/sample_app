require 'sidekiq/web'

Rails.application.routes.draw do

  mount Sidekiq::Web => "/sidekiq"
  
  resources :posts
  # get "path" to "controller"
  root "static_pages#home"
  get "/about", to: "static_pages#about"
  get "/signup", to: "users#new"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy", as: 'logout'

  post 'send_mail', to: "users#send_mail", as: 'send_mail'
  resources :users
  
end
