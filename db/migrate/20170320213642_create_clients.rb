class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.integer :_id
      t.string :client_name
      t.references :project, foreign_key: true
      t.references :region, foreign_key: true

      t.timestamps
    end
    add_index :clients, :client_name, unique: true
  end
end
