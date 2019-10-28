class CreateUserPressConferences < ActiveRecord::Migration[5.2]
  def change
    create_table :user_press_conferences do |t|
      t.references :user, foreign_key: true
      t.references :press_conference, foreign_key: true
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
