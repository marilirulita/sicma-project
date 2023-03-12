class CotizacionMn < ApplicationRecord
  belongs_to :cliente
  belongs_to :user
  belongs_to :job
  belongs_to :factura
end
