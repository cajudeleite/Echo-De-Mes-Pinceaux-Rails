Rails.application.routes.draw do
  resources :contacts, except: [:edit, :update]
  resources :comments
  resources :artworks
  resources :statuses
  resources :collections
  resources :techniques
  resources :years
  devise_for :users
  root to: 'pages#home'
  get '/admin', to: 'pages#admin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
