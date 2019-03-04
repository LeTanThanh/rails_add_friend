Rails.application.routes.draw do
  root "users#index"
  resources :users, only: %i|index show|
  resources :friend_relations, only: %i|create destroy|
end
