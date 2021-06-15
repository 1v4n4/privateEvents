class CreateAttendances < ActiveRecord::Migration[6.1]
  def change
    create_table :attendances, &:timestamps
  end
end
