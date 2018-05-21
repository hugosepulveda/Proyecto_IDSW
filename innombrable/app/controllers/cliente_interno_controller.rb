class ClienteInternoController < ApplicationController
  def index
  end

  def create
		@solicitudes = Solicitudes.new(solicitudes_params)
	end

  def show
		@solicitudes = Solicitudes.find(params[:id])
	end
private
def solicitudes_params
  params.require(:usuario).permit(:nombres, :apellidos, :contrasena)
end


end
