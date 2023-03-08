Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :accommodations do
    post :index, on: :collection
  end

  # Defines the root path route ("/")
  # root "articles#index"
end
