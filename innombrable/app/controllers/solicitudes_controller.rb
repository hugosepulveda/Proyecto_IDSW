class SolicitudesController < ApplicationController
  def new
    @solicitude = Solicitude.new
  end
end
