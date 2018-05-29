Rails.application.routes.draw do
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
