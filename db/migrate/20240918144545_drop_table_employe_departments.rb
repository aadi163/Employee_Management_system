class DropTableEmployeDepartments < ActiveRecord::Migration[7.1]
  def change
    drop_table :employee_departments
  end
end
