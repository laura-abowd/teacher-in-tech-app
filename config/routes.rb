#routes

Rails.application.routes.draw do


  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  # creating a route for our contact--
  # get 'index', to: 'contact#index'
  get 'contact', to: 'pages#contact'
  get 'tutoring', to: 'pages#tutoring'
  get 'resources', to: 'pages#resources'
  resources :contact, only: [:index, :new, :create]
end
