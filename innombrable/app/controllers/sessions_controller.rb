class SessionsController < ApplicationController
  def new
  end

  def create
  	usuario = Usuario.find_by(rut: params[:session][:rut])

  	if usuario && usuario.contrasena == params[:session][:contrasena]
        log_in usuario
        redirect_to usuario

  	else
  	  flash.now[:danger] = 'Combinación rut/contraseña inválida.'
  	  render 'new'
  	end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
