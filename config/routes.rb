Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'videos#index', as: :root

  get "/pages/:page" => "pages#show"

  resources :videos, only: [:index, :show, :new, :create]

  resources :categories, only: [:show]

  resources :users, only: [:show]

  resources :videos do
    member do
      put "like", to: "videos#upvote"
      put "dislike", to: "videos#downvote"
    end
  end

end
