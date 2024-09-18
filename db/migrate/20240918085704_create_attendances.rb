class CreateAttendances < ActiveRecord::Migration[7.1]
  def change
    create_table :attendances do |t|
      t.string :attendance
      t.string :date

      t.timestamps
    end
  end
end
