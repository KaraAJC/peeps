Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  resources :tickets
  resources :parties
  resources :pets
  resources :people
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
