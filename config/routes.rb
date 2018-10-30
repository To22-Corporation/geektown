Rails.application.routes.draw do
  root to: 'users#index'
  devise_for :users
  resources :users
  resources :contacts
  get '/home', to: 'home#index'
end
