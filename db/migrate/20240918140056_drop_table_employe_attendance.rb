class DropTableEmployeAttendance < ActiveRecord::Migration[7.1]
  def change
    drop_table :employee_attendances
  end
end
