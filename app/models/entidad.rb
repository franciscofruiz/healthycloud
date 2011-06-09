class Entidad < ActiveRecord::Base
    has_many :contratos
    belongs_to :tipo, :class_name => 'DbTable'

end