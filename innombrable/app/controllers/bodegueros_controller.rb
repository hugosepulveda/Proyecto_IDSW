class BodeguerosController < ApplicationController
  def index
  end

  def new
  end

  def mod_solicitudes
    @bodeguero = Bodeguero.find_by(usuario_id: current_user.id)
    @clientes = ClientesInterno.where(bodega_id: @bodeguero.bodega_id)
    @solicitudes = Solicitude.where(cliente_id: @clientes.ids)
  end

  def mod_inventario
    @bodeguero = Bodeguero.find_by(usuario_id: current_user.id)
    #@bodega = Bodega.where(bodeguero_id: @bodeguero.id)
    @materiales = Materiale.where(bodega_id: @bodeguero.bodega_id)
  end

  def update

  end
  def guardar_materiales
  end
  def guardar_solicitudes
  end
end
