ProductManagementDashboard::Application.routes.draw do

  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  get 'report1', to: 'dashboard#report1',  as: 'report1'
  root :to => 'dashboard#show'

  resources :users
  resources :sessions

end
