Rails.application.routes.draw do
  root "shortens#new"
  resources :shortens, only: [:new, :create, :show]
  get ":short_url", to: "shortens#redirect"
end
