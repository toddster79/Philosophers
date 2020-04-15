Rails.application.routes.draw do
  # resources :philosopher_lists
  # resources :philosophers
  # resources :users 

  resources :philosopher_lists, only: [:index, :create, :destroy]
  resources :users, only: [:index, :show, :create]
  resources :philosophers, only: [:index, :show]
  get '/login', to: 'users#login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
