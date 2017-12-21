class CreateSensors < ActiveRecord::Migration[5.1]
  def change
    create_table :sensors do |t|
      t.string :code
      t.string :description
      t.integer :status, :default => 1
      t.integer :device_id
    end
    add_index :sensors, :code
  end
end
