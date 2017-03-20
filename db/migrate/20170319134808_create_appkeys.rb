class CreateAppkeys < ActiveRecord::Migration[5.0]
  def change
    create_table :appkeys do |t|
      t.string :acl_token
      t.references :role, foreign_key: true

      t.timestamps
    end
  end
end
