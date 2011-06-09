class CreatePacientes < ActiveRecord::Migration
  def self.up
    create_table :pacientes, :options => "ENGINE=INNODB" do |t|
      t.string :name1
      t.string :name2
      t.string :last_name1
      t.string :last_name2
      t.string :full_name
      t.integer :tipo_identificacion
      t.string :numero_identificacion
      t.integer :genero
      t.integer :grupo_sanguineo
      t.integer :estado_civil
      t.references :entidad
      t.references :contrato
      t.integer :estrato
      t.integer :tipo_usuario
      t.integer :grupo_atencion
      t.integer :ocupacion
      t.integer :departamento
      t.integer :municipio
      t.integer :comuna
      t.integer :barrio
      t.string :direccion
      t.string :telefono_fijo
      t.string :telefono_celular
      t.string :email
      t.string :nombre_padre
      t.string :nombre_madre
      t.string :acudiente
      t.integer :photo_id
      t.integer :huella_id
      t.timestamps
    end
  end

  def self.down
    drop_table :pacientes
  end
end
