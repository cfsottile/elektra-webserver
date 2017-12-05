class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :role
      t.string :token
      t.datetime :token_valid_through
    end
    add_index :users, :username
    add_index :users, :token
  end
end
