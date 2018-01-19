Rails.application.routes.draw do

  resources :searches
  resources :stuffs
  resources :users
  
    controller :sessions do
  	get 'login' => :new
  	post 'login' => :create
  	delete 'logout' => :destroy
  	get 'signup' => 'users#new'
  end

  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'


  root to: 'visitors#index'
    resources :users do
      get :make_admin, on: :member
  end
end
