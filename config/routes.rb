Rails.application.routes.draw do
  root to: "articles#index"
  resources :articles do
    resources :comments
  end  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users
  resource :session
  get "/login", to: "sessions#new", as: "login"
  get "/logout", to: "sessions#destroy", as: "logout"
  # Defines the root path route ("/")
  # root "articles#index"
end
