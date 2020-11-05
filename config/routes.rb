Rails.application.routes.draw do
  resources :attendances, except: [:show]
  root to: 'attendances#index'
end