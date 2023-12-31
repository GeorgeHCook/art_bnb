Rails.application.routes.draw do
  # resources :artworks
  devise_for :users
  root to: "artworks#index"

  get "dashboard", to: "pages#dashboard"
  resources :artworks do
    resources :bookings, only: [:index, :new, :create, :update, :show, :destroy]
  end
  resources :bookings, only: [:destroy]
  patch "approve", to: "bookings#approve"
  patch "decline", to: "bookings#decline"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
