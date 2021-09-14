Rails.application.routes.draw do
  devise_for :users
  resources :diaries do
    resources :exercises, only: [:new, :create]
  end
  root to: 'diaries#index'
end
