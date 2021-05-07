Rails.application.routes.draw do

  get 'judo_test/index'
  get 'judo_test/show'
  resources :courses
  resources :dojos
  devise_for :judokas, controllers: {registrations:'judokas/registrations'}
  devise_for :senseis, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: "courses#lobby"
end