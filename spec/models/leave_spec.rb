require 'rails_helper'

RSpec.describe Leave, type: :model do
  describe "Write test cases for leave" do
    context "association" do
      it { should belong_to(:user) }
    end
  end
end
