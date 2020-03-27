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
    add_index :heat_maps, [:path, :click_type]
  end

  def self.down
    remove_index :heat_maps, [:path, :click_type]
    drop_table :heat_maps
  end
end
