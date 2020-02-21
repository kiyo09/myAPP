Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'users#index'
  resources :posts, only: [:index, :new, :create, :show]
  resources :weeks, only: [:index, :new, :create, :show, :edit, :update]
  resources :months, only: [:index, :new, :create, :show, :edit, :update]
end
