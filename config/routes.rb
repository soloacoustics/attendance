Rails.application.routes.draw do
  resources :attendances, except: [:show, :delete]
end
