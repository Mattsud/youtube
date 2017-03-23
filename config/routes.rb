Rails.application.routes.draw do
  devise_for :users
  root to: 'public#index', as: :root

  resources :videos, only: [:index, :show]
end
