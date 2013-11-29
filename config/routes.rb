SampleApp::Application.routes.draw do
  resources :smp_referenzs

  resources :consumable_materials

  resources :ipc_seats

  resources :ipc_all_acs

  resources :ipc_airbuses

  resources :ipc_boeings

  resources :cmm_revisions

  resources :amms

  resources :amm_o2_services

  resources :aircraft_documents

  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :sessions,      only: [:new, :create, :destroy]
  resources :microposts,    only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
  root to: 'static_pages#home'
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'

  match '/ipc_data',     to: 'ipc_catalog#ipc', via: 'get'
  
  #match '/ipcs/new', to: 'ipcs#new',     via: 'get' 
end