class CreateHolidays < ActiveRecord::Migration
 def self.up
    create_table :holidays, :options => "ENGINE=INNODB" do |t|
      t.datetime :start_date, :null => false
      t.datetime :end_date, :null => false
      t.timestamps 
    end 
  end

  def self.down
     drop_table :holidays
  end
end
