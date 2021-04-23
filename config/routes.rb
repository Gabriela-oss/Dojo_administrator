Rails.application.routes.draw do

  resources :courses
  resources :dojos
  devise_for :judokas
  devise_for :senseis
  root to: "dojos#index"
end
