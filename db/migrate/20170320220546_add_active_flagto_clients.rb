class AddActiveFlagtoClients < ActiveRecord::Migration[5.0]
  def change
    add_column :clients, :active, :boolean
  end
end
