Rails.application.routes.draw do
  root to: redirect('/menu')

  get "/menu", to: "menu#today", as: "menu"

  resources :orders, only: [:create]
end
