Rails.application.routes.draw do
  devise_for :users
  resources :diaries, only: [:index, :new, :create]
  root to: 'diaries#index'
end
