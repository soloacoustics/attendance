Rails.application.routes.draw do
  resources :attendances
  root to: 'attendances#index'
end