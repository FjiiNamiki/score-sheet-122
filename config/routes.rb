Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  resources :users, only: :show
  resources :diaries do
    resources :exercises do
      resources :scores, only: :create
    end
  end
  root to: 'diaries#index'
end
