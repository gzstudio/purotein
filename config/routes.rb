Rails.application.routes.draw do
  root 'pages#home'
  get '/add-snack', to: 'products#new'
  get '/add-brand', to: 'brands#new'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  
  resources :users
  resources :products
  resources :brands
end
