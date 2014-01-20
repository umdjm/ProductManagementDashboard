ProductManagementDashboard::Application.routes.draw do

  get 'sales', to: 'dashboard#sales',  as: 'sales'

  resources :parts
  resources :competition_prices
  resources :ibis_data
  resources :users
  resources :sessions

  get 'retrieve_data', to: 'dashboard#retrieve_data',  as: 'retrieve_data'
  get 'retrieve_sales_data', to: 'sales#index',  as: 'retrieve_sales_data'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'competition', to: 'dashboard#competition',  as: 'competition'
  root :to => 'dashboard#show'

end
