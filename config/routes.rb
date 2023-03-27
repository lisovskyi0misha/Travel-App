Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root 'countries#index'
  resources :accommodations do
    # post :index, on: :collection
  end

  resources :countries

  # Defines the root path route ("/")
  # root "articles#index"
end
