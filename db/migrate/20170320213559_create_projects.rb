class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.integer :_id
      t.string :project_name
      t.string :project_code
      t.boolean :active

      t.timestamps
    end
    add_index :projects, :project_name, unique: true
  end
end
