Rails.application.routes.draw do

  root 'posts#index'

  resources :posts, only: [:new, :create, :index, :show, :update, :edit]
  resources :comments, only: [:new, :create, :index, :update, :edit]
  

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
