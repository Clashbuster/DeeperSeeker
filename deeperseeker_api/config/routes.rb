Rails.application.routes.draw do
  resources :player_artifacts
  resources :player_riddles
  resources :artifacts
  resources :riddles
  resources :players

  post '/players/new', to: 'players#create'
  post 'players/id/correct-answer', to: 'players#correct_answer'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
