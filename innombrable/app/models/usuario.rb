class Usuario < ApplicationRecord
  belongs_to :clientes_interno
  belongs_to :bodeguero
  belongs_to :bodegueros_central
  belongs_to :encargados_compra
end
