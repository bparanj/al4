Rails.application.routes.draw do
  get 'login' => 'user_sessions#new', as: :login
  get 'logout' => 'user_sessions#destroy', as: :logout

  resource :user_sessions
  resources :users
  
  root 'users#index'
end
