Rails.application.routes.draw do
  root to:'static_pages#top'
  resources :menus
  get 'random', to: 'menus#random'
end
