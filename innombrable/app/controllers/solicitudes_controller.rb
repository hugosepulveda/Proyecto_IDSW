class SolicitudesController < ApplicationController
  def show
    if current_user.tipo == "bodeguero"
        @bodeguero = Bodeguero.where(usuario_id: current_user.id)
        @obras = Obra.where(bodega_id: @bodeguero.bodega_id)
        @clientes = ClientesInterno.where(obra_id: obras.id)
        @solicitudes = Solicitude.where(cliente_id: @clientes.id)
        render "show"
    else
        render "sessions/new"
    end
  end

  def create
  end

  def update
  end
end
