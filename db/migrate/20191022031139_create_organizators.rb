class CreateOrganizators < ActiveRecord::Migration[5.2]
  def change
    create_table :organizators do |t|
      t.string :name
      t.integer :phone
      t.string :description
      t.boolean :admin
      t.string :address

      t.timestamps
    end
  end
end
