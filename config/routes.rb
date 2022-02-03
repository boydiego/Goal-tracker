Rails.application.routes.draw do
  root "about#index"

  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"
end
