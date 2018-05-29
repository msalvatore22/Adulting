Rails.application.routes.draw do

  devise_for :users
  get 'likes/index'
  get 'likes/show'
  get 'likes/new'
  get 'likes/edit'
  get 'likes/create'
  get 'likes/update'
  get 'likes/destroy'

  get "home/index"
  root "home#index"

  resources :posts
end
