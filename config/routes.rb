Rails.application.routes.draw do
  get 'friendships/create'
  get 'friendships/destroy'
  resources :notifications
  root 'posts#index'

  resources :posts do 
    resources :comments
    resources :likes
  end


  devise_for :users, controllers: { omniauth_callbacks: 'omniauth' }
  resources :users, only: [:show]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
