Rails.application.routes.draw do
  root 'items#index'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end
  resources :users do
    member do
      get 'logout'
    end
  end
  resources :items do
    collection do
      get 'item_list'
      get 'brand_index'
    end
  end
  resources :favorites, only: :index
  resources :reviews, only: :index
end
