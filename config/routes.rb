Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :users do
    resources :portfolios, :projects
  end

  resources :portfolios, only: [:show]
  resources :users
  root 'users#index'
end
