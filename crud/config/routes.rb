Rails.application.routes.draw do
  root "home#home"
  resources :gossips
  resources :comments
end
