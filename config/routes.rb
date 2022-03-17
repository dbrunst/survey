Rails.application.routes.draw do
  resources :widgets
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'user_surveys#index'
  resources :user_surveys
  resources :responses
end
