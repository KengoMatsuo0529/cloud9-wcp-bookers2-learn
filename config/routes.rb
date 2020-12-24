Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :books, only: [:new, :create, :edit, :update, :index, :show, :destroy]
end
