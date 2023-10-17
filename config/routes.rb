Rails.application.routes.draw do
  get 'home/about'
  root to: "homes#top"
  devise_for :users
  resources :users, only: [:show, :edit, :index]
  resources :books, only: [:new, :index, :show]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
