class Leave < ApplicationRecord
  has_many :employee_leaves
  has_many :users , through: :employee_leaves
end
