Rails.application.routes.draw do
  devise_for :users
  root to: "supliers#index"
  resources :supliers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
