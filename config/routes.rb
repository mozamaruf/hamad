Rails.application.routes.draw do
  resources :tools
  resources :users
  root to: 'visitors#index'
end
