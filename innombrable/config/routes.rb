Rails.application.routes.draw do
  get 'bodegueros/new'
  get 'clientes_internos/new'
  get 'sessions/new'
  root 'sessions#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :usuarios
  post 'clientes_internos', to: 'clientes_internos#crear_solicitudes'
  get 'clientes_internos', to: 'clientes_internos#ver_solicitudes'
  
    #post 'usuarios/new' => 'usuarios#new'
    #root 'login#login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
