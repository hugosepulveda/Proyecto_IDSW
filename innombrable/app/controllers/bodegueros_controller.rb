class BodeguerosController < ApplicationController
  def index
  end

  def new
  end

  def mod_solicitudes
    @bodeguero = Bodeguero.find_by(usuario_id: current_user.id)
  end

  def mod_inventario
    @bodeguero = Bodeguero.find_by(usuario_id: current_user.id)
    #@bodega = Bodega.where(bodeguero_id: @bodeguero.id)
    @materiales = Materiale.where(bodega_id: @bodeguero.bodega_id)
  end
  def aprobar_sol
  end
end
