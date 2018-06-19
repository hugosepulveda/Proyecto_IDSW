class ArchivosController < ApplicationController
  def descarga_planilla
    send_file "#{Rails.root}/public/planillaSolicitud.xlsx", type: "application/xlsx"
  end
end
