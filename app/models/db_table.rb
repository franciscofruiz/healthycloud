class DbTable < ActiveRecord::Base
  has_many :procedimientos, :foreign_key => "genero_id"
  has_many :entidads, :foreign_key => "tipo_id"
  has_many :pacientes, :foreign_key => "genero_id"

  def to_label
    name 
  end

  def self.get_elements_for(kind = "genero")
    find(:all , :conditions => ['kind = ?', kind])
  end
end
