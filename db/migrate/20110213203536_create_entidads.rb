class CreateEntidads < ActiveRecord::Migration
  def self.up
    create_table :entidads do |t|
      t.string :name, :null => false
      t.string :codigo_habilitacion
      t.string :nit_numero
      t.string :nit_digito_verificacion
      t.column :tipo_id , :integer, :null => false, :references => :virtual_table_rows
      t.string :direccion
      t.string :telefono_fijo
      t.string :telefono_movil
      t.string :persona_contacto
      t.string :email
      t.string :website
      t.string :website_autorizaciones
      t.string :website_radicacion_rips
      t.string :email_autorizaciones
      t.string :callcenter_autorizaciones
      t.string :callcenter_autorizaciones2
      t.timestamps 
    end
  end

  def self.down
     drop_table :entidads
  end
end
