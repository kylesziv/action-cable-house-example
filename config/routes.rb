Rails.application.routes.draw do
  resources :houses

  root 'houses#index'
end
