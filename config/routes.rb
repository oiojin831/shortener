Rails.application.routes.draw do
  root "home#index"
  resources :shortens, only: [:create, :show]
end
