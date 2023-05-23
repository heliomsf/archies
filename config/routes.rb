Rails.application.routes.draw do
  resources :users
  resources :reviews
  resources :buildings
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'buildings', to: 'buildings#index'
  get 'search', to: 'buildings#search'
  root 'buildings#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
