Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  patch 'capture', to: 'pokemon#capture', as: 'capture'
end
