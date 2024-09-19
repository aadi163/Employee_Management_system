require 'rails_helper'

RSpec.describe Salary, type: :model do
  describe "Write test cases for EmployeeSalary" do
    context "association" do
      it { should belong_to(:user) }
    end
  end
end
