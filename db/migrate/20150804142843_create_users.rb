class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, unique: true
      t.integer :pin

      t.timestamps null: false
    end
  end
end
