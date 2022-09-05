Rails.application.routes.draw do
  resources :quotes
  resources :tasks
  get 'dashboard', to: 'dashboard#index'
  post 'tasks/:id/active' => 'tasks#active'

  resources :teams
  resources :competitions
  root 'matches#index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
