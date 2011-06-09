class Contrato < ActiveRecord::Base
  belongs_to :entidad
  has_many :sub_contratos
end