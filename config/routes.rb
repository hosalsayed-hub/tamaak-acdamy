Rails.application.routes.draw do
  get 'render/index'
  devise_for :users

   resources :categories

  resources :courses do
    get :created, :purchased, :published_unapproved, :pending_review, :latest, :top_rated, :popular, on: :collection
    member do
  		patch :approve
  		patch :disapprove
    end
    resources :subscriptions, only: [:new, :create]
    resources :lessons do
      put :sort
    end
  end

  resources :subscriptions do
    get :my_students, on: :collection
    member do
  		patch :remove_review
    end
  end
  get '/health_check', to: proc { [200, {}, ['success']] }

  resources :users, only: [:show, :index]
  
  resources :lessons do
    put :sort
  end
  get "up" => "rails/health#show", as: :rails_health_check
  root to: 'home#index'
end