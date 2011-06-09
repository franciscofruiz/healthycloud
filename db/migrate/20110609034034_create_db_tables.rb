class CreateDbTables < ActiveRecord::Migration
  def self.up
    create_table :db_tables do |t|
      t.string  :name
      t.string  :description
      t.string  :kind
      t.integer :order
      t.timestamps
    end
  end

  def self.down
    drop_table :db_tables
  end
end
