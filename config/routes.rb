Rails.application.routes.draw do
  root 'posts#index'
  resources :posts, only: %i[index show]
  namespace :admin do
    root 'dashboard#index'
    get '/dashboard', to: 'dashboard#index'
    get '/sign_in', to: 'sessions#new'
    delete '/sign_out', to: 'sessions#destroy'
    resources :posts
    resources :registrations, only: %i[new create]
    resources :sessions, only: :create
  end
end
