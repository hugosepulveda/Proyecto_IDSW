Rails.application.routes.draw do
  get 'bodegueros/new'
  get 'clientes_internos/new'
  get 'sessions/new'
  root 'sessions#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :usuarios
  resources :clientes_internos
  get ':id/clientes-internos/crear_solicitudes', to: 'clientes_internos#crear_solicitudes'
  post ':id/clientes-internos/crear_solicitudes', to: 'clientes_internos#crear_solicitudes'
  get ':id/clientes_internos/ver_solicitudes', to: 'clientes_internos#ver_solicitudes'
  
    #post 'usuarios/new' => 'usuarios#new'
    #root 'login#login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
