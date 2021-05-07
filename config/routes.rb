Rails.application.routes.draw do

  get 'judo_test/index'
  get 'judo_test/show'
  resources :courses
  resources :dojos
  devise_for :judokas, controllers: {
    registrations:'judokas/registrations',
    sessions: 'judokas/sessions' 
    }
  devise_for :senseis, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get 'judokas', to: 'judokas#index', as: 'judokas'
  get 'judokas/:id', to: 'judokas#show', as: 'judokas_show'


  root to: "courses#lobby"
end
