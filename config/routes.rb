Rails.application.routes.draw do

  resources :dojos
  devise_for :judokas
  devise_for :senseis
  root to: "home#index"
end
