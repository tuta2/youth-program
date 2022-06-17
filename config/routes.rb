Rails.application.routes.draw do
  resources :sessions, only: [:create]
  get "login", to: "sessions#new"
  get "logout", to: "sessions#destroy"
  resources :users
  get "register", to: "users#new"

  resources :investitures
  resources :coasts
  resources :mombasas

  root "sessions#index"
end
