Rails.application.routes.draw do
  root "emails#new"

  resources :emails, only: [:index, :new, :create]

  devise_for :users
end
