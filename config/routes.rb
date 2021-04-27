Rails.application.routes.draw do

  # get 'admin/senseis/new', to: 'senseis#new'
  # post 'admin/senseis', to: 'senseis#create'


  resources :courses
  resources :dojos
  devise_for :judokas
  devise_for :senseis, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: "dojos#index"
end
