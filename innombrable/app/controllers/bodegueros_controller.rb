class BodeguerosController < ApplicationController
  def index
  end

  def new
    @despacho_nuevo = Despacho.new
  end
  def crear_despacho
    @formu_despacho = params[:despacho_nuevo]
    @bodeguero = Bodeguero.find_by(usuario_id: current_user.id)
    @despacho_nuevo = Despacho.new(bodeguero_id: @bodeguero.id, orden_id: @formu_despacho[:orden_id], fecha: @formu_despacho[:fecha], comentario: @formu_despacho[:comentario], estado: @formu_despacho[:estado])

    if @despacho_nuevo.save
      flash[:success] = "¡Despacho creado correctamente!"
      redirect_to :action => "crear_despacho"
    else
      flash[:success] = "No"
      #render "crear_despacho"
    end
  end

  def create
    @formuu = params[:solicitude]
    @bodeguero = Bodeguero.find_by(usuario_id: current_user.id)
    @solicitude = Solicitude.new(bodeguero_id: @bodeguero.id, material: @formuu[:material], cantidad: @formuu[:cantidad], prioridad: @formuu[:prioridad], estado: "Aprobada")

    if @solicitude.save
      flash[:success] = "¡Solicitud ingresada correctamente!"
      redirect_to :action => "crear_solicitud"
    else
      render "crear_solicitud"
    end
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
  def crear_solicitud
    if current_user.tipo == "bodeguero"
        #render "crear_solicitudes"
        @solicitude = Solicitude.new
    else
        render root_url
    end
  end
  def crear_despacho
    if current_user.tipo == "bodeguero"
        #render "crear_solicitudes"
        @despacho_nuevo = Despacho.new
    else
        render root_url
    end
  end
  def cerrar_despacho
    if current_user.tipo == "bodeguero"
        #render "crear_solicitudes"
        @solicitude = Solicitude.new
    else
        render root_url
    end
  end
  def guardar_materiales
  end
  def guardar_solicitudes
  end
end
