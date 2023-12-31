Rails.application.routes.draw do
  get 'home/about'
  root to: "homes#top"
  devise_for :users
  resources :users, only: [:show, :edit, :index, :update]
  resources :books, only: [:new, :index, :show, :create, :edit, :update, :destroy]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
