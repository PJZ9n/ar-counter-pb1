Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :posts, only: [:index, :create]

  # Defines the root path route ("/")
  root "posts#index"
end
