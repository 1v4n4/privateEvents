Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  resources :events
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'events#index'
  
  get 'users/:id', to: 'users#show', as: 'users_events'
end
