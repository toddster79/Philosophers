Rails.application.routes.draw do
  resources :philosopher_lists
  resources :philosophers
  resources :users 

  
  get '/login', to: 'users#login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
