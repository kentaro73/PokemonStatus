Rails.application.routes.draw do
  devise_for :users
  root 'statuses#index'
  resources :statuses 
  get '/question_s', to: 'statuses#question_s'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
