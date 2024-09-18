class CreateEmployeeDepartments < ActiveRecord::Migration[7.1]
  def change
    create_table :employee_departments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :department, null: false, foreign_key: true

      t.timestamps
    end
  end
end
