class CreateMudapis < ActiveRecord::Migration[5.0]
  def change
    create_table :mudapis do |t|
      t.string :app_name
      t.string :app_code

      t.timestamps
    end
  end
end
