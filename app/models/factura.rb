class Factura < ApplicationRecord
  belongs_to :cliente
  has_many :cotizacion_dlls
  has_many :cotizacion_mns
end
