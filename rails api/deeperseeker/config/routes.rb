Rails.application.routes.draw do
  resources :riddles
  resources :artifacts
  resources :players
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
