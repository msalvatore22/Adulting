Rails.application.routes.draw do

  devise_for :users
  get "home/index"
  root "home#index"

  reources :likes
  resources :posts
end
