Rails.application.routes.draw do

  get 'encargados_compras/index'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get 'sessions/new'

  resources :usuarios
  resources :clientes_internos
  resources :bodegueros
  resources :bodegueros_centrales
  resources :encargados_compras
  resources :solicitudes

  get 'clientes_internos/new'

  get ':id/clientes-internos/crear_solicitudes', to: 'clientes_internos#crear_solicitudes'
  post ':id/clientes-internos/crear_solicitudes', to: 'clientes_internos#crear_solicitudes'
  get ':id/clientes_internos/ver_solicitudes', to: 'clientes_internos#ver_solicitudes'

  get 'bodegueros_central/index'
  get 'ordenes/create'
  get 'bodegas/show'
  get 'bodegueros/new'
  
  root 'sessions#new'
  #post 'usuarios/new' => 'usuarios#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
