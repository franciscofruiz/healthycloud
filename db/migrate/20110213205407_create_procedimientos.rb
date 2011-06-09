class CreateProcedimientos < ActiveRecord::Migration
  def self.up
    create_table :procedimientos, :options => "ENGINE=INNODB" do |t|
      t.string :name, :null => false
      t.string :codigo_cups
      t.string :codigo_soat
      t.integer :genero_id
      t.decimal :edad_inicial
      t.decimal :edad_final
      t.boolean :status, :default => true
      t.timestamps 
    end 
  end

  def self.down
    drop_table :procedimientos
  end
end
