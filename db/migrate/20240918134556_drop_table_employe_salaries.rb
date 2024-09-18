class DropTableEmployeSalaries < ActiveRecord::Migration[7.1]
  def change
    drop_table :employee_salaries
  end
end
