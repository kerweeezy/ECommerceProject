# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  get 'cart/index'
  get '/about', to: 'pages#about', as: 'about'
  get '/contact', to: 'pages#contact', as: 'contact'
  get '/cart', to: 'cart#index', as: 'cart'

  resources :teams, only: %i[index show] do
    collection do
      get 'search_results'
    end
  end

  resources :jerseys, only: %i[index show] do
    collection do
      get 'search_results'
    end
  end

  post 'jerseys/add_to_cart/:id', to: 'jerseys#add_to_cart', as: 'add_to_cart'
  delete 'jerseys/remove_from_cart/:id', to: 'jerseys#remove_from_cart', as: 'remove_from_cart'

  root 'teams#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
