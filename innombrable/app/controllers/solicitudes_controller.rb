class SolicitudesController < ApplicationController
  def show
    if current_user.tipo == "bodeguero"
        @bodeguero = Bodeguero.find_by(usuario_id: current_user.id)
        @clientes = ClientesInterno.where(bodega_id: @bodeguero.bodega_id)
        @solicitudes = Solicitude.where(usuario_id: @clientes.ids)
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
