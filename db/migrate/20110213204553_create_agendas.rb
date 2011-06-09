class CreateAgendas < ActiveRecord::Migration
 def self.up
    create_table :agendas, :options => "ENGINE=INNODB" do |t|
      t.datetime :startdate
      t.datetime :enddate
      t.integer :estado_cita_id
      t.integer :profesional_id
      t.integer :especialidad_id
      t.integer :procedimiento_id
      t.integer :finalidad_id
      t.integer :paciente_id
      t.integer :entidad_id
      t.integer :contrato_id
      t.integer :consultorio_id
      t.integer :categoria_id
      t.integer :estrato_id
      t.integer :servicio_id
      t.boolean :status, :default => false
      t.text :note
      t.timestamps 
    end 
  end

  def self.down
     drop_table :agendas
  end
end
