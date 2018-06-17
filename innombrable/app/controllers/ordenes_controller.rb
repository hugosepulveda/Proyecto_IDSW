class OrdenesController < ApplicationController
  def new
  end
  def create
    @solicitudes = Solicitude.all
  end

  def show
  end
  def enviar_orden
  end
end
