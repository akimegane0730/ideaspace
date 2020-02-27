Rails.application.routes.draw do
  devise_for :users
  root "tops#intro"
  resources :posts, only: [:new, :create, :edit, :update, :show, :destroy] do
    resources :comments, only: [:create, :destroy]
  end
  get 'tops/many', to: 'tops#many'
  get 'tops/intro', to: 'tops#intro'
  resources :players, only: [:index]
  resources :users, only: [:show, :edit, :update]
end
