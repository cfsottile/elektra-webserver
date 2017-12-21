class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.string :code
      t.string :description
    end
    add_index :places, :code
  end
end
