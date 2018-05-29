Rails.application.routes.draw do
  
  get "home/index"
  root "home#index"

  reources :likes
  resources :posts
end
