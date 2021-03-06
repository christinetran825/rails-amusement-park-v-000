Rails.application.routes.draw do

  root 'welcome#home'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'
  post '/rides/new', to: 'rides#create'
  resources :users, only: [:new, :edit, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]
  resources :attractions

end
