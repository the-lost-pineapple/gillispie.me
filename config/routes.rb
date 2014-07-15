Blog::Application.routes.draw do
  get "comments/create"
  resources :links
  resources :comments
  devise_for :users
  resources :posts
  get "search", to: "posts#search", as: 'search'
  root 'posts#index'
end
