Rails.application.routes.draw do
  get 'about', to: 'pages#about', as: :about
  root to: 'visitors#index'
  devise_for :users
  resources :users

  # Management
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
