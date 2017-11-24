Rails.application.routes.draw do
  resources :posts, only: %i[index]
  root 'home#index'
end
