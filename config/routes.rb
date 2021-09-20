Rails.application.routes.draw do
  devise_for :users
  resources :diaries do
    resources :exercises do
      resources :scores
    end
  end
  root to: 'diaries#index'
end
