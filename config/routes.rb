Rails.application.routes.draw do
  resources :posts
  # get "path" to "controller"
  root "static_pages#home"
  get "/about", to: "static_pages#about"
  get "/signup", to: "users#new"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy", as: 'logout'
  resources :users
end
