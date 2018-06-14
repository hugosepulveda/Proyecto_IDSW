class OrdenesController < ApplicationController
  def create
    @bodeguero = Bodeguero.find_by(usuario_id: current_user.id)
    @obra = Obra.where(bodega_id: @bodeguero.bodega_id)
    @cliente = ClientesInterno.where(obra_id: @obra.ids)
    @solicitudes = Solicitude.where(usuario_id: @cliente.ids)
    #@orden = Orden.create()
  end

  def show
  end
end
