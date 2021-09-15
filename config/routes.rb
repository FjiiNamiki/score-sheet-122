Rails.application.routes.draw do
  devise_for :users
  resources :diaries do
    resources :exercises
  end
  root to: 'diaries#index'
end
