Rails.application.routes.draw do

  resources :courses
  resources :dojos
  devise_for :judokas, controllers: {registrations:'judokas/registrations'}
  devise_for :senseis, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get 'judokas', to: 'judokas#index', as: 'judokas'

  root to: "courses#lobby"
end
