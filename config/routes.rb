Rails.application.routes.draw do
  root 'users#show'

  get '/auth/github/callback', to: 'sessions#create'
  post '/projects/:id', to: 'projects#fork'

  resources :developerprojects, only: [:show, :create, :update, :destroy]
  resources :projects, only: [:index, :show, :create, :update, :destroy]
  resources :clients, only: [:show]
  resources :developers, only: [:show]
end
