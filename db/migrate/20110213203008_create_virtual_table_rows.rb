class CreateVirtualTableRows < ActiveRecord::Migration
  def self.up
    create_table :virtual_table_rows do |t|
      t.references :virtual_tables
      t.string :field1, :null => false
      t.string :field2
      t.string :field3
      t.string :field4
      t.string :field5
      t.string :field6
      t.string :field7
      t.string :field8
      t.timestamps 
    end

    
  end

  def self.down
     drop_table :virtual_table_rows
  end
end
