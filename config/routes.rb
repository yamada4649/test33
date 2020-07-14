Rails.application.routes.draw do
  devise_for :users
  root 'books#top'
  resources :books
  resources :users
  get 'home/about' => 'books#about'
end