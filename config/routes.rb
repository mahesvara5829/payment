Rails.application.routes.draw do
  devise_for :users
  root to: "sp_payments#index"

  resources :sp_payments,only: [:index, :new, :create, :show, :destroy]
  
end
