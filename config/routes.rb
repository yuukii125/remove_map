Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  
  resources :users, only: [:show]

  resources :salons do
    resources :reviews, only: [:create, :destroy]
  end
end
