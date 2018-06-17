class OrdenesController < ApplicationController
  def create
    @bodeguero = Bodeguero.find_by(usuario_id: current_user.id)
    @clientes = ClientesInterno.where(bodega_id: @bodeguero.bodega_id)
    @solicitudes = Solicitude.where(usuario_id: @clientes.ids)
  end

  def show
  end
end
