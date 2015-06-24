Rails.application.routes.draw do
  resources :courses
  resources :employees
  resources :locations
  resources :companies
  root to: 'companies#index'
end
