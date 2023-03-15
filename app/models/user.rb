class User < ApplicationRecord
  has_many :jobs
  has_many :cotizacion_mns
  has_many :cotizacion_dlls
end
