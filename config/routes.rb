Rails.application.routes.draw do
  get 'reviews/index'
  get 'likes/index'
  get 'likes/show'
  get 'salons/index'
  get 'salons/show'
  get 'salons/edit'
  get 'users/show'
  get 'users/edit'
  root 'home#index'
end
