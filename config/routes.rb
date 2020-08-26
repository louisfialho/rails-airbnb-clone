Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :flats, only: [:index, :show] do
    resources :reviews, only: [:show, :create]
    resources :bookings, only: [:new , :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
