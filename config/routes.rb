Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :trees
  get 'home/index'
  get 'home/pricing'

  devise_for :users, controllers: {
    registrations: "users/registrations"
  }


  root "home#index"

  devise_scope :user do
    get "/users/sign_out", to: "devise/sessions#destroy"
  end
end
