require 'rails_helper'

RSpec.describe Department, type: :model do
  describe "Write test cases for Department" do
    context "association" do
      it { should have_many(:users) }
    end
  end
end
