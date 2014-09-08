Rails.application.routes.draw do
  root "dashboard#index"
  get "signin" => "sessions#new", as: :signin
  post "signin" => "sessions#create"
  get "signout" => "sessions#destroy", as: :signout
  get "/patients/:id/prescriptions/new" => "prescriptions#new"
  resources :patients
  resources :prescriptions
  resources :medications
end
