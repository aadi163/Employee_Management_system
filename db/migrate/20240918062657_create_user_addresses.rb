class CreateUserAddresses < ActiveRecord::Migration[7.1]
  def change
    create_table :user_addresses do |t|
      t.string :address
      t.string :city
      t.string :state
      t.bigint :phone_no
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
