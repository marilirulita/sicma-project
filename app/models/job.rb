class Job < ApplicationRecord
  belongs_to :user
  has_many :cotizacion_mns
  has_many :cotizacion_dlls
end
