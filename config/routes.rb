Rails.application.routes.draw do
  resources :kwales
  resources :nairobis
  resources :nyanzas
  resources :westerns
  resources :southrifts
  resources :northrifts
  resources :centrals
  resources :lowereasterns
  resources :uppereasterns
  resources :northeasterns
  resources :packholidays
  resources :patrolleaderscourses
  resources :badges
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
