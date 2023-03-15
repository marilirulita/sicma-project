class Cliente < ApplicationRecord
  has_many :cotizacion_dlls
  has_many :cotizacion_mns
  has_many :facturas
end
