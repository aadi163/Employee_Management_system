require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Write test cases for user" do
    context "association" do
      it { should have_one(:user_role) }
      it { should have_one(:user_address) }
      it { should have_many(:salaries) }
      it { should have_many(:leaves) }
      it { should have_many(:attendances) }
      it { should belong_to(:department) }
    end
  end
end
