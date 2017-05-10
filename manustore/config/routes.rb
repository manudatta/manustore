Rails.application.routes.draw do
  get 'inventory/upload'
  post 'inventory/upload'
  resources :products,:categories
  root 'inventory#upload'
end
