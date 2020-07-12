Rails.application.routes.draw do
  devise_for :users
  root 'books#index'
  resources :books
 resources :users
 get 'about' => 'books#about', as: "about"

end