Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :buildings
  post "companies/new_employee"
  resources :companies
  # resources :employees, only: [:new, :update]
  resources :offices
end
