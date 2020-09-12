Rails.application.routes.draw do
  devise_for :users
  root 'items#index'
  resources :items do
    collection do
      get 'item_list'
      get 'brand_index'
    end
  end
  resources :favorites, only: :index
  resources :reviews, only: :index
end
