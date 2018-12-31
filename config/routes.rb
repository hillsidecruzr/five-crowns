Rails.application.routes.draw do
  get 'dashboard/index'
  resources :members
  root "application#index"

  resources :games
end
