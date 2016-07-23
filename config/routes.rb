Rails.application.routes.draw do
  resources :photos
  resources :vehicles
  resources :auto_gates
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
