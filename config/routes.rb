Rails.application.routes.draw do
  resources :notifications, only: [:create, :index, :destroy]
  root 'posts#index'

  resources :posts do 
    resources :comments
    resources :likes
  end


  devise_for :users
  resources :users, only: [:show]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
