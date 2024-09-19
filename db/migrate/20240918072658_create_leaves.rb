class CreateLeaves < ActiveRecord::Migration[7.1]
  def change
    create_table :leaves do |t|
      t.string :from
      t.string :to
      t.string :days

      t.timestamps
    end
  end
end
