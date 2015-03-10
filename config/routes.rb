Rails.application.routes.draw do
  
  root to: 'sessions#login'

  get 'login',    to: 'sessions#login'
  post 'sign_in', to: 'sessions#sign_in'
  
end
