# Rails.application.routes.draw do
#   root 'statuses#new'

#   resources :statuses
# end

Rails.application.routes.draw do
  # root 'statuses#dashboard'
  root 'statuses#new'
  resources :statuses
  get 'dashboard', to: 'statuses#dashboard'
end
