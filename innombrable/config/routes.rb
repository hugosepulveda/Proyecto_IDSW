Rails.application.routes.draw do

  get 'encargados_compras/index'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get 'sessions/new'

  resources :usuarios do
    resources :clientes_internos, :bodegueros, :bodegueros_centrales, :encargados_compras, :solicitudes
  end

  get 'clientes_internos/new'

  get 'clientes-internos/crear_solicitudes', to: 'clientes_internos#crear_solicitudes'
  post 'clientes-internos/crear_solicitudes', to: 'clientes_internos#crear_solicitudes'
  get 'clientes-internos/ver_solicitudes', to: 'clientes_internos#ver_solicitudes'

  post 'clientes_internos/create', to: 'clientes_internos#create'

  get 'bodegueros_central/index'
  get 'ordenes/create'
  get 'bodegas/show'
  get 'bodegueros/new'

  get 'bodegueros/mod_solicitudes', to: 'bodegueros#mod_solicitudes'
  post 'bodegueros/mod_solicitudes', to: 'bodegueros#mod_solicitudes'

  get 'bodegueros/mod_inventario', to: 'bodegueros#mod_inventario'
  post 'bodegueros/mod_inventario', to: 'bodegueros#mod_inventario'

  get 'ordenes/create', to: 'ordenes#create'
  post 'ordenes/create', to: 'ordenes#create'

  get 'ordenes/enviar', to: 'ordenes#enviar'
  post 'ordenes/enviar', to: 'ordenes#enviar'

  get 'bodegueros/aprobar_sol', to: 'bodegueros#aprobar_sol'
  post 'bodegueros/aprobar_sol', to: 'bodegueros#aprobar_sol'

  get 'bodegueros_centrales/mod_solicitudes', to: 'bodegueros_centrales#mod_solicitudes'
  post 'bodegueros_centrales/mod_solicitudes', to: 'bodegueros_centrales#mod_solicitudes'

  get 'bodegueros_centrales/mod_inventarios', to: 'bodegueros_centrales#mod_inventarios'
  post 'bodegueros_centrales/mod_inventarios', to: 'bodegueros_centrales#mod_inventarios'

  get 'cotizaciones/create', to: 'cotizaciones#create'
  post 'cotizaciones/create', to: 'cotizaciones#create'

  get 'archivos/descarga_planilla', to: 'archivos#descarga_planilla'
  post 'archivos/descarga_planilla', to: 'archivos#descarga_planilla'
  
  post 'archivos/subir_planilla', to: 'archivos#subir_planilla'


  get 'bodegueros/update', to: 'bodegueros#update'
  post 'bodegueros/update', to: 'bodegueros#update'

  get 'bodegueros/guardar_solicitudes', to: 'bodegueros#guardar_solicitudes'
  post 'bodegueros/guardar_solicitudes', to: 'bodegueros#guardar_solicitudes'

  get 'bodegueros/guardar_materiales', to: 'bodegueros#guardar_materiales'
  post 'bodegueros/guardar_materiales', to: 'bodegueros#guardar_materiales'

  root 'sessions#new'
  #post 'usuarios/new' => 'usuarios#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
