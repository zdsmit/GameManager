Rails.application.routes.draw do
  root 'welcome#homepage'
  get '/signin', to: 'sessions#new', :as => 'signin'
  post '/signin', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy', :as => 'logout'
  resources :transactions
  resources :genres
  resources :games
  resources :users do
    resources :games
  end
  resources :sessions, only: [:new, :create, :destroy]
  get '/auth/facebook/callback' => 'sessions#facebookAuth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
