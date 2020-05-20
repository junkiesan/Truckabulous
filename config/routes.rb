Rails.application.routes.draw do
  devise_for :users
  root to: 'trucks#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :trucks, only: [:index, :show, :create, :new] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:show]
end
