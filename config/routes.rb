Rails.application.routes.draw do
  resources :contacts, only: [:index, :show, :destroy]
  resources :comments
  resources :artworks
  post 'artworks/filter' => 'artworks#filter'
  resources :statuses
  resources :collections
  resources :techniques
  resources :years
  devise_for :users
  root to: 'pages#home'
  get '/admin', to: 'pages#admin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
