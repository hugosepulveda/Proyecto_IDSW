class UsuariosController < ApplicationController
	def show
		@usuario = Usuario.find(params[:id])
	end

	def new
		@usuario = Usuario.new
	end

	def create

    	@user = Usuario.new(usuario_params)

    	if @usuario.save
      		log_in @usuario
      		flash[:success] = "jaja"
      		redirect_to @usuario
    	else
      		render 'new'
    	end
  end

  private

    def usuario_params
      params.require(:usuario).permit(:nombres, :apellidos)
    end

end
