class ClientesInternosController < ApplicationController

  def index
    @solicitude = Solicitude.new
  end

  def new
    @solicitude = Solicitude.new
  end

  def show
  end

  def create
    @formu = params[:solicitude]
    @cliente = ClientesInterno.find_by(usuario_id: current_user.id)
    @solicitude = Solicitude.new(cliente_id: @cliente.id, material: @formu[:material], cantidad: @formu[:cantidad], prioridad: @formu[:prioridad], estado: "En revisión")

    if @solicitude.save
      flash[:success] = "¡Solicitud ingresada correctamente!"
      redirect_to :action => "crear_solicitudes"
    else
      render "crear_solicitudes"
    end
  end

  def crear_solicitudes
    if current_user.tipo == "cliente interno"
        #render "crear_solicitudes"
        @solicitude = Solicitude.new
    else
        render root_url
    end
  end

  def ver_solicitudes
    if current_user.tipo == "cliente interno"
        @cliente = ClientesInterno.find_by(usuario_id: current_user.id)
        @solicitudes = Solicitude.where(cliente_id: @cliente.id)
        @bodeguero = Bodeguero.find_by(bodega_id: @cliente.bodega_id)
        @usuario_bo = Usuario.find(@bodeguero.usuario_id)
        render "ver_solicitudes"
    else
        render root_url
    end
  end

end
