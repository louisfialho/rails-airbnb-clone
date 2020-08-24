Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get "flats", to: "flats#index"

  get "flats/new", to: "flats#new"

  get "flats/:id", to: "flats#show", as: :flat

  post "flats", to: "flats#create"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
