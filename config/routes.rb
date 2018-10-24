Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  patch 'capture', to: 'pokemon#capture', as: 'capture'
  patch 'damage', to: 'pokemon#damage', as: 'damage'
  patch 'heal', to: 'pokemon#heal', as: 'heal'
  get 'new', to: 'pokemon#new', as: 'new'
  post 'create', to: 'pokemon#create', as: 'create'
end
