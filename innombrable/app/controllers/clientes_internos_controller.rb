class ClientesInternosController < ApplicationController

  def new
  end

  def show
  end

  def crear_solicitudes
    if current_user.tipo == "cliente interno"
        render "crear_solicitudes"
    else
        render "sessions/new"
    end
  end

  def ver_solicitudes
    if current_user.tipo == "cliente interno"
        @solicitudes = Solicitude.where(usuario_id: current_user.id)
        render "ver_solicitudes"
    else
        render "sessions/new"
    end
  end

  def create
    @formu = params[:solicitude]
    @solicitude = Solicitude.new(usuario_id: current_user.id, material: @formu[:material], cantidad: @formu[:cantidad], prioridad: @formu[:prioridad], estado: "En revisión")

    if @solicitude.save
      render ":id/crear_solicitudes"
    else
      render ":id/crear_solicitudes"
    end
  end
  
end
