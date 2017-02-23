Rails.application.routes.draw do
  root to: 'home#index'
  resources :meals
  resources :exercises
end
