Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  
  resources :users, only: [:show]
  # ゲストログイン
  post '/home/guest_sign_in', to: 'home#new_guest'

  resources :salons do
    resources :reviews, only: [:create, :destroy]
  end
end
