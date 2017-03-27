Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'videos#index', as: :root

  resources :videos, only: [:index, :show, :new, :create]
  resources :categories, only: [:show]
end
