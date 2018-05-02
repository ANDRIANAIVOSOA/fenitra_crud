Rails.application.routes.draw do
  root 'welcome#index'
  get '/liste_film', to: 'movies#liste_film', as:'liste'
end
