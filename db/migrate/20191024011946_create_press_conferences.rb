class CreatePressConferences < ActiveRecord::Migration[5.2]
  def change
    create_table :press_conferences do |t|
      t.string :title
      t.text :description
      t.date :date
      t.time :time
      t.string :address
      t.integer :status
      t.references :organizator, foreign_key: true

      t.timestamps
    end
  end
end
