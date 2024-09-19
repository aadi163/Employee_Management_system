require 'rails_helper'

RSpec.describe Attendance, type: :model do
  describe "Write test cases for attendance" do
    context "association" do
      it { should belong_to(:user) }
    end
  end
end
