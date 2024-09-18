class EmployeeSalary < ApplicationRecord
  belongs_to :user
  belongs_to :salary
end
