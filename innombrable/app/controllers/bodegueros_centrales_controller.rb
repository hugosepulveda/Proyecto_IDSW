require 'json'
require 'faraday'
require 'base64'

class BodeguerosCentralesController < ApplicationController
  def mod_solicitudes
    @solicitudes = Solicitude.all
  end

  def mod_inventarios
    @materiales = Materiale.all
  end

  def crear_bodega
    usuario = Base64.encode64 'hugo.sepulvedaa@sansano.usm.cl:68b9a821a9d9052d0a8f'
    conn = Faraday.new(:url => 'https://app.alegra/api/v1/')
    conn.authorization('hugo.sepulvedaa@sansano.usm.cl', 'proyectoGPI')
    @b = conn.get('https://app.alegra.com/api/v1/warehouses')
    puts @b
  end
end
