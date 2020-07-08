Rails.application.routes.draw do
  root to: "payments#index"

  resources :payments, only: [:show]
end
