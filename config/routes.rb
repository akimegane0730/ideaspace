Rails.application.routes.draw do
  devise_for :users
  root "tops#index"

  resources :posts, only: [:new, :create]

  resources :players, only: [:index]
end
