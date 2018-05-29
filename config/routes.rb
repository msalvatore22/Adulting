Rails.application.routes.draw do

  devise_for :users
  get "home/index"
  root "home#index"

  resources :comments
  resources :lifestyles
  resources :technologies
  resources :travels
  resources :cars
  resources :housings
  resources :finances
  resources :likes
  resources :posts
end
