class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :photo
      t.string :phone
      t.text :description
      t.string :social_network
      t.string :social_network_url
      t.string :media_name
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
