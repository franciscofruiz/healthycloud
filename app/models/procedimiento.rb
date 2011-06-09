class Procedimiento < ActiveRecord::Base
  belongs_to :genero, :class_name => 'DbTable'

end