Rails.application.routes.draw do
  resources :posts
  root 'home#index'
  get '/sign_in', to: 'user/sessions#new'
  delete '/sign_out', to: 'user/sessions#destroy'
  namespace :user do
    resources :registrations, only: %i[new create]
    resources :sessions, only: :create
  end
end
