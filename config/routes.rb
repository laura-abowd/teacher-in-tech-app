#routes

Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # creating a route for our contact--
  # get 'index', to: 'contact#index'
  get 'contact', to: 'pages#home'
  get 'tutorials', to: 'pages#tutorials'
  resources :contact, only: [:index, :new, :create]
end
