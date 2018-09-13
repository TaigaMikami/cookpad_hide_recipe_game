Rails.application.routes.draw do
  root to:'static_pages#top'
  resources :menus
  get 'random', to: 'menus#random'
  get '/menus/:id/material_preperation', to: 'menus#material_preperation', as: 'material_preparation'
end
