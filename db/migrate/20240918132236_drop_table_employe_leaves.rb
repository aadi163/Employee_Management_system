class DropTableEmployeLeaves < ActiveRecord::Migration[7.1]
  def change
    drop_table :employee_leaves
  end
end
