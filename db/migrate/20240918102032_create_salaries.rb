class CreateSalaries < ActiveRecord::Migration[7.1]
  def change
    create_table :salaries do |t|
      t.string :date
      t.bigint :amount

      t.timestamps
    end
  end
end
