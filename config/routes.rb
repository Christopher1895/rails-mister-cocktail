Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create] #nests mean here that we can only run these when a cocktail exist
  end

  resources :doses, only: [:destroy]
end
