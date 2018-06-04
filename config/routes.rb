Rails.application.routes.draw do

  resources :search
  devise_for :users
  resources :users
  get "home/index"
  root "home#index"

  get 'posts/cars', :to => 'posts#car_posts'
  get 'posts/finance', :to => 'posts#finance_posts'
  get 'posts/lifestyle', :to => 'posts#lifestyle_posts'
  get 'posts/technology', :to => 'posts#technology_posts'
  get 'posts/housing', :to => 'posts#housing_posts'
  get 'posts/travel', :to => 'posts#travel_posts'

  resources :scores
  resources :comments
  resources :likes
  resources :posts
end
