Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :buildings
  resources :companies
  resources :offices
  # delete "employees/:id", to: "employees#delete", as: "delete_employee"
  resources :employees #, only: [:new, :create, :delete]
end
