class UsuariosController < ApplicationController
	def show
		@usuario = Usuario.find(params[:id])
		
		if @usuario.tipo == "cliente interno"
		    render "clientes_internos/index"
		elsif @usuario.tipo == "bodeguero"
		    render "bodeguero/index"
		end
	end

	def new
		@usuario = Usuario.new
	end

	def create

    	@user = Usuario.new(usuario_params)

    	if @usuario.save
      		log_in @usuario
      		if usuario.tipo == "cliente interno"
      			#render 'cliente-interno'
      			redirect_to @usuario
      		end
    	else
      		render 'new'
    	end
  end

  private

    def usuario_params
      params.require(:usuario).permit(:nombres, :apellidos)
    end

end
