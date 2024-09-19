require 'rails_helper'

RSpec.describe UserRole, type: :model do
  describe "Write test cases for UserRole" do
    context "association" do
      it { should belong_to(:user) }
    end
  end
end
