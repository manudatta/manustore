Rails.application.routes.draw do
  get 'inventory/upload'
  post 'inventory/upload'
  resources :products,:categories
  get 'start', to:  'inventory#upload'
  root to: 'categories#index'
end
