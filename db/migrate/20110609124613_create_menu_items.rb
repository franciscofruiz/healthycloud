class CreateMenuItems < ActiveRecord::Migration
  def self.up
    create_table :menu_items do |t|
       t.string  :name
       t.string  :description
       t.string  :controller
       t.string  :action
       t.string  :params
      t.timestamps
    end
  end

  def self.down
    drop_table :menu_items
  end
end
