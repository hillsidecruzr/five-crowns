Rails.application.routes.draw do
  get '/logout', to: 'application#logout'
  get 'dashboard/index'

  get 'members/signin', to: 'members#signin'
  resources :members

  root "application#index"

  get 'games/select', to: 'games#select'
  resources :games
end
