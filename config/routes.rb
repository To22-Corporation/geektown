Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :users
  resources :users
  resources :contacts do
    post :confirm, action: :confirm_new, on: :new
  end
end
