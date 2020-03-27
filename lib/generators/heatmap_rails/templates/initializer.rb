class CreateHeatMaps < ActiveRecord::Migration
  def self.up
    create_table :heat_maps do |t|
      t.string :path
      t.string :click_type
      t.float :offset_x
      t.float :offset_y
      t.text :xpath

      t.timestamps
    end
  end

  def self.down
    drop_table :heat_maps
  end
end
