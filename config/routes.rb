Blog::Application.routes.draw do
  get "comments/create"
  resources :links
  resources :comments
  devise_for :users
  resources :posts
  root 'posts#index'
end
