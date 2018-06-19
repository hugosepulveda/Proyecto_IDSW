class BodeguerosCentralesController < ApplicationController
  def mod_solicitudes
    @solicitudes = Solicitude.all
  end
  def mod_inventarios
    @materiales = Materiale.all
  end
end
