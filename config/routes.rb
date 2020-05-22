Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :trucks, only: [:index, :show, :create, :new] do
    post '/create_booking', to: 'trucks#create_booking'
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:show, :index, :destroy]
  get "/profile", to: 'pages#profile'
  get "/my_trucks", to: 'pages#my_trucks'

end
