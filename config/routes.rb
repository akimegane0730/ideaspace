Rails.application.routes.draw do
  devise_for :users
  root "tops#index"
  resources :posts, only: [:new, :create, :edit, :update]
  get 'tops/many', to: 'tops#many'
  resources :players, only: [:index]
  resources :users, only: [:show, :edit, :update]
end
