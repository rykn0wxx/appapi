class CreateRawExecutives < ActiveRecord::Migration[5.0]
  def change
    create_table :raw_executives do |t|
      t.string :month
      t.references :client, foreign_key: true
      t.float :revenue
      t.float :ebit
      t.float :fte
      t.integer :ticket
      t.integer :sla_scope
      t.integer :sla_attain

      t.timestamps
    end
  end
end
