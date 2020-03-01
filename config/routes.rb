Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'users#index'

  resources :users, only: [:index, :new, :create, :show]
  resources :todos, only: [:index, :new, :create, :show, :edit, :update] do
    resources :posts, only: [:index, :new, :create, :show]
  end
  resources :weeks, only: [:index, :new, :create, :show, :edit, :update]
  resources :months, only: [:index, :new, :create, :show, :edit, :update]
  resources :years, only: [:index, :new, :create, :show, :edit, :update]
  resources :mandaras, only: [:index, :new, :create, :show, :edit, :update]
  resources :memos, only: [:index, :new, :create, :show]
  resources :newss, only: [:index, :show]
  
  
end
