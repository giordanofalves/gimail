Rails.application.routes.draw do
  root "emails#index"

  resources :emails, except: [:destroy, :update] do
    collection do
      get "sent"
    end
  end

  devise_for :users
end
