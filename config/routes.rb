Bundlr::Engine.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :projects

  root to: 'sessions#new'

  match '/signup', to: 'users#new'
  match '/signin', to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete
  match '/edit', to: 'users#edit'
  match '/home', to: 'users#show'

  

end
