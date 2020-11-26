Rails.application.routes.draw do
  root 'statuses#index'
  resources :statuses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
