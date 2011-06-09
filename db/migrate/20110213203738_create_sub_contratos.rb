class CreateSubContratos < ActiveRecord::Migration
  def self.up
    create_table :sub_contratos, :options => "ENGINE=INNODB" do |t|
      t.references :contrato
      t.string :name
      t.integer :manual_tarifario_id
      t.integer :tipo_usuario_id
      t.integer :tipo_contrato_id
      t.decimal :valor_facturado
      t.timestamps
    end
  end

  def self.down
    drop_table :sub_contratos
  end
end
