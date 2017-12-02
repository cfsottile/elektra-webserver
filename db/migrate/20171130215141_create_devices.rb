class CreateDevices < ActiveRecord::Migration[5.1]
  def change
    create_table :devices do |t|
      t.string :name
      t.string :description
      t.integer :place_id
    end
    add_index :devices, :name
  end
end
