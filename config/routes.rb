Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :artworks, only: [:index, :show] do
    member do
      get 'new_booking_request', to: 'artworks#new_booking_request'
      post 'create_booking_request', to: 'artworks#create_booking_request'
    end
  end
end
