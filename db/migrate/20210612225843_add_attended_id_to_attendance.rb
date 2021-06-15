class AddAttendedIdToAttendance < ActiveRecord::Migration[6.1]
  def change
    add_column :attendances, :attended_id, :integer
    add_index :attendances, :attended_id
  end
end
