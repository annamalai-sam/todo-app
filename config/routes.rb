Rails.application.routes.draw do
  # get 'todos/index'
  # get 'todos/home'
  root 'users#index'
  match 'index', :to =>'users#index', :via => :get
  match 'create', :to =>'users#create', :via => :post
  match "users/index", to: "users#index", via: :get
  match "/delete", to: "users#delete", via: :post
  # match "users/1", to: "users#destroy", via: post
  # match 'i', :to =>'todos#index', :via => 'get'
  #   match 'destroy', :to =>'users#destroy', :via => :delete
  # match 's', :to =>'todos#sign_up', :via => 'get'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resource :users
end