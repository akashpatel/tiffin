Rails.application.routes.draw do

  get "/menu", to: "menu#today", as: "menu"

  resources :orders, only: [:create]
end
