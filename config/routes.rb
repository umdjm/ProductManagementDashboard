ProductManagementDashboard::Application.routes.draw do

  resources :parts


  resources :competition_prices


  resources :ibis_data
  get 'retrieve_data', to: 'dashboard#retrieve_data',  as: 'retrieve_data'


  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  get 'competition', to: 'dashboard#competition',  as: 'competition'
  root :to => 'dashboard#show'

  resources :users
  resources :sessions

end
