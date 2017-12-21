class CreateDevices < ActiveRecord::Migration[5.1]
  def change
    create_table :devices do |t|
      t.string :code
      t.string :name
      t.integer :place_id
    end
    add_index :devices, :code
  end
end
