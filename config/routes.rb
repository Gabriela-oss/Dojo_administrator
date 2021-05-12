Rails.application.routes.draw do
  
  resources :courses
  resources :dojos
  devise_for :judokas, controllers: {
    registrations:'judokas/registrations',
    sessions: 'judokas/sessions' 
  }
  devise_for :senseis, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)


  get 'mis_senseis', to: 'senseis#index', as: 'mis_senseis'
  get 'info', to: 'info#graphics', as: 'graphics'
  get 'info', to: 'info#info', as: 'info'
  get 'categories', to: 'categories#index'
  get 'judo_test', to: 'judo_test#index'
  get 'judokas', to: 'judokas#index', as: 'judokas'
  get 'judokas/:id', to: 'judokas#show', as: 'judokas_show'
  get 'senseis/:id', to: 'senseis#show', as: 'senseis_show'
  get 'judo_test/:id', to: 'judo_test#show', as: 'judo_test_show'
  
  root to: "info#lobby"
end
