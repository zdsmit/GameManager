Rails.application.routes.draw do
  root 'welcome#homepage'
  resources :game_genres
  resources :user_games
  resources :developers
  resources :genres
  resources :games
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
