Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'videos#index', as: :root

  get "/pages/:page" => "pages#show"
  get "/videos/add-a-video", to: "videos#new", as: "add-a-video"

  resources :videos, only: [:index, :show, :create]
  resources :categories, only: [:show]

  resources :users, only: [:show]
  resources :videos do
    member do
      put "like", to: "videos#upvote"
      put "dislike", to: "videos#downvote"
    end
  end

end
