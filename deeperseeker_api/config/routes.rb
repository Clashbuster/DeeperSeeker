Rails.application.routes.draw do
  resources :player_artifacts
  resources :player_riddles
  resources :artifacts
  resources :riddles
  resources :players

  post '/players/new', to: 'players#create'
  post '/correctanswer', to: 'players#correct_answer'
  post '/gameover', to: 'players#game_over'
  delete '/remove-player', to: 'players#remove_presence'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
