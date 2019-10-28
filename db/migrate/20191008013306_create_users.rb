class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :lastname
      t.string :rut
      t.integer :user_type

      t.timestamps
    end
  end
end