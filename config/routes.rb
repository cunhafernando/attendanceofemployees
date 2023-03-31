Rails.application.routes.draw do
  resources :timesheets
  get 'register/index'
  resources :sectionals
  resources :employees
  resources :offices
  resources :sectors
  
  resources :users
  root 'timesheets#index'
  get 'login', to: 'sessions#new' 
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  delete 'logout', to: 'sessions#destroy'
  get 'welcome', to: 'sessions#welcome'
  get 'authorized', to: 'sessions#page_require_login'

end
