class OrdenesController < ApplicationController
  def new
  end
  def create
    @solicitudes = Solicitude.all
  end

  def show
  end
  def enviar
    @ordenes = Ordene.all
  end
end
