Rails.application.routes.draw do
  resources :cotizacion_mns
  resources :cotizacion_dlls
  resources :facturas
  resources :jobs
  resources :proveedors
  resources :clientes
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
