Rails.application.routes.draw do
  get 'about', to: 'public#about', as: :about
  get 'blog', to: 'public#posts_handler', as: :posts_handler


  root to: 'visitors#index'
  devise_for :users
  resources :users

  # Management
  resources :posts
  resources :posts, path: "", except: [:index, :new, :create]
  get '*id', to: 'public#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
