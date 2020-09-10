Rails.application.routes.draw do
  root 'items#index'
  resources :items
  resources :favorites, only: :index
  resources :reviews, only: :index
end
