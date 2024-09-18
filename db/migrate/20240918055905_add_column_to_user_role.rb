class AddColumnToUserRole < ActiveRecord::Migration[7.1]
  def change
    add_column :user_roles, :profile, :string
  end
end
