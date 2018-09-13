Rails.application.routes.draw do
  root to:'static_pages#top'
  resources :menus
  get 'random', to: 'menus#random'
  get '/menus/:id/material_preperation', to: 'menus#material_preperation', as: 'material_preparation'
  get '/menus/:id/cooking', to: 'menus#cooking', as: 'cooking'
  get 'menus/:id/success', to: 'menus#success', as: 'success'
  get 'menus/:id/time_up', to: 'menus#time_up', as: 'time_up'
  get 'menus/:id/failure', to: 'menus#failure', as: 'failure'
end
