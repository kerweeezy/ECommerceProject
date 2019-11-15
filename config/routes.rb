# frozen_string_literal: true

Rails.application.routes.draw do
  get 'page/contact'
  get 'page/about'
  resources :team, only: %i[index show]
  resources :jerseys, only: %i[index show]

  root 'team#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
