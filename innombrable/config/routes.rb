Rails.application.routes.draw do
    get 'sessions/new'
    root 'sessions#new'
    get    '/login',   to: 'sessions#new'
    post   '/login',   to: 'sessions#create'
    delete '/logout',  to: 'sessions#destroy'
    resources :usuarios
    #post 'usuarios/new' => 'usuarios#new'
    #root 'login#login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
