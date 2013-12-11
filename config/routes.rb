ProductManagementDashboard::Application.routes.draw do

  get 'report1', to: 'dashboard#report1',  as: 'report1'
  root :to => 'dashboard#show'

end
