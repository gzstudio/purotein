Rails.application.routes.draw do
  get 'pages/home'
  root 'pages#home'
  get '/signup', to: 'users#new'
end
