Rails.application.routes.draw do
    #resources :login
    post 'login/login' => 'login#login', as: 'login'
    resources :usuarios
    post 'usuarios/new' => 'usuarios#new'
    root 'login#login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
