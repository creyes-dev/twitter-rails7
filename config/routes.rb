Rails.application.routes.draw do

  get 'competing_users/edit' => 'competing_users#edit', as: :edit_competing_user
  post 'competing_users/select_favorite_competing_team' => 'competing_users#select_favorite_competing_team', as: :select_favorite_competing_team
  get 'static_pages/rules' => 'static_pages#rules', as: :rules
  get "/rules", :to => "static_pages#rules", :as => :ruly_rules

  resources :competitions
  resources :departments
  devise_for :users
  get 'dashboard/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "dashboard#index"
end
