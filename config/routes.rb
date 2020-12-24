Rails.application.routes.draw do
  
  root to: "homes#top"
  devise_for :users
  resources :users
  resources :books, only: [:new, :create, :edit, :update, :index, :show, :destroy]
end
