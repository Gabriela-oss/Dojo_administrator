Rails.application.routes.draw do

  resources :courses
  resources :dojos
  devise_for :judokas, controllers: {
    registrations:'judokas/registrations',
    sessions: 'judokas/sessions' 
  }
  devise_for :senseis, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  get 'judo_test', to: 'judo_test#index'
  get 'judokas', to: 'judokas#index', as: 'judokas'
  get 'judokas/:id', to: 'judokas#show', as: 'judokas_show'
  get 'judo_test/:id', to: 'judo_test#show', as: 'judo_test_show'
  
  root to: "courses#lobby"
end
