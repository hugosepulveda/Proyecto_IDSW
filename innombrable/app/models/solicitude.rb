class ValidadorCrearSolicitud < ActiveModel::Validator

  def validate(record)
    if record.material.nil?
      record.errors[:material] << 'no ingresada.'
    end
    if record.cantidad.nil?
      record.errors[:cantidad] << 'no ingresada o <= 0.'
    end
    if record.prioridad.nil?
      record.errors[:prioridad] << 'no ingresada.'
    end
  end

end

class Solicitude < ApplicationRecord
  #validates :material, :cantidad, :prioridad, presence: true
  include ActiveModel::Validations
  validates_with ValidadorCrearSolicitud
end
