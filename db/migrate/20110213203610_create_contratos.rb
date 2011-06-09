class CreateContratos < ActiveRecord::Migration
  def self.up
   create_table :contratos, :options => "ENGINE=INNODB" do |t|
      t.references :entidad
      t.string :name
      t.string :numero
      t.date :date
      t.date :start_date
      t.date :end_date
      t.decimal :monto_original
      t.decimal :monto_adicional
      t.decimal :valor_facturado
      t.integer :file
      t.integer :poliza_file
      t.boolean :status, :default => true
      t.text :note
      t.timestamps 
    end
  end


  def self.down
    drop_table :contratos
  end
end
