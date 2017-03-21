class CreateRegions < ActiveRecord::Migration[5.0]

  def self.up
    create_table :regions do |t|
      t.integer :_id
      t.string :region_name
      t.string :region_code
      t.string :region_label
      t.boolean :active

      t.timestamps
    end
    add_index :regions, :region_name, unique: true
  end

  def self.down
    drop_table :regions
  end
  
end
