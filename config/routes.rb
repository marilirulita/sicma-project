Rails.application.routes.draw do
  resources :facturas
  resources :proveedors

  resources :users do
    resources :cotizacion_mns do
      resources :clientes
    end
    resources :cotizacion_dlls do
      resources :clientes
    end
    resources :jobs
  end
    
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"
end
