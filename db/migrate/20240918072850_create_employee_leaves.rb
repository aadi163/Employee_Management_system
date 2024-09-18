class CreateEmployeeLeaves < ActiveRecord::Migration[7.1]
  def change
    create_table :employee_leaves do |t|
      t.references :user, null: false, foreign_key: true
      t.references :leave, null: false, foreign_key: true

      t.timestamps
    end
  end
end
