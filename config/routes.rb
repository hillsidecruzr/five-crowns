Rails.application.routes.draw do
  resources :members
  root "application#index"

  resources :games
end
