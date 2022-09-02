Rails.application.routes.draw do
  get 'competing_user_team/index'
  get 'competing_user_team/edit'
  get 'competing_user_team/update'
  get 'competing_user_team/destroy'
  resources :teams
  resources :competitions
  root 'matches#index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
