Rails.application.routes.draw do
  resources :clients
  resources :prestations
  get 'connexion/index'
  resources :games
  resources :index
  resources :connexion
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "index#index"
end
