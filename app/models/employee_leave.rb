class EmployeeLeave < ApplicationRecord
  belongs_to :user
  belongs_to :leave
end
