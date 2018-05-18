class UsuariosController < ApplicationController

	def new
		@usuario = Usuario.new
	end
#----------
	def create
		@usuario = Usuario.new(usuario_params)
		if @usuario.save
			puts "usuario ingresadoAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
			redirect_to @usuario
		else
			render 'new'
		end
	end
#----------------------
	def show
		@usuario = Usuario.find(params[:id])
	end
#------------
	private
		def usuario_params
			params.require(:usuario).permit(:nombres, :apellidos, :contrasena)
		end

end
