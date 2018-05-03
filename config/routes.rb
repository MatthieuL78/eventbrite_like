Rails.application.routes.draw do
  post 'invitation/:id/:user', to: 'events#invitation', as: :invitation
  post 'subscribe/:id', to: 'events#subscribe', as: :subscribe
  resources :users, :events
  get 'login', to: 'sessions#new', as: :login
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy', as: :logout
  root 'staticpages#home'
end
