Rails.application.routes.draw do
  get :sign_in, to: 'sessions#new'
  post :sign_in, to: 'sessions#create'

  delete :logout, to: 'sessions#logout'

  root to: 'events#index'
end
