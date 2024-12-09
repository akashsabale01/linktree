Rails.application.routes.draw do
  devise_for :users
  resources :trees
  get 'home/index'
  get 'home/pricing'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"

  devise_scope :user do
    get "/users/sign_out", to: "devise/sessions#destroy"
  end
end
