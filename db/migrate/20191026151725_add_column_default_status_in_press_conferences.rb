class AddColumnDefaultStatusInPressConferences < ActiveRecord::Migration[5.2]
  def change
    change_column_default :press_conferences, :status, 0
  end
end
