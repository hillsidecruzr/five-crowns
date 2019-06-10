Rails.application.routes.draw do
  get '/logout', to: 'application#logout'
  get 'dashboard/index'
  resources :members
  root "application#index"

  resources :games
end
