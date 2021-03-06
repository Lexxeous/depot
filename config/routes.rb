# frozen_string_literal: true

require "./app/store"
Rails.application.routes.draw do
  match "catalog" => StoreApp.new, via: :all
  get "admin" => "admin#index"

  controller :sessions do
    get "login" => :new
    post "login" => :create
    delete "logout" => :destroy
  end

  resources :users
  resources :products do
    get :who_bought, on: :member
  end

  get "sessions/new"
  get "sessions/create"
  get "sessions/destroy"

  scope "(:locale)" do
    resources :users
    resources :orders
    resources :line_items
    resources :carts
    root "store#index", as: "store_index", via: :all
  end

  resources :products do
    get :who_bought, on: :member
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
