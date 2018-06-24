class Solicitude < ApplicationRecord
  validates :material, :cantidad, :prioridad, presence: true
end
