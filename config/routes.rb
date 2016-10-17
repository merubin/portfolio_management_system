Rails.application.routes.draw do
resource :session   # Add this after the resources already in the file.


   get '/menu/main' , to: 'menus#index' do
     erb :"menus/index"
   end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users do
    resources :projects, :portfolios
  end

  resources :portfolios, only: [:show,:index]
  resources :users
  resources :projects, only: [:index]
  resource  :session
  root 'Session#new'
end
