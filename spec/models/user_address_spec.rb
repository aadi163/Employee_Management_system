require 'rails_helper'

RSpec.describe UserAddress, type: :model do
  describe "Write test cases for UserAddress" do
    context "association" do
      it { should belong_to(:user) }
    end
  end
end
