Rails.application.routes.draw do
  root to: 'users#index'
  devise_for :users
  resources :users
  resources :contacts do
    post :confirm, action: :confirm_new, on: :new
  end
  get '/home', to: 'home#index'
end
