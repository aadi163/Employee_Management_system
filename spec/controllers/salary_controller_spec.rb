require 'rails_helper'

RSpec.describe SalariesController, type: :controller do
  let(:user) { FactoryBot.create(:user) }

  describe "salary#create" do
    it "creates a new salary" do
      process :create, method: :post , params: { amount:25000 , date: "12/11/33" , user_id: user.id }
      expect(Salary.last.amount).to eq(25000)
    end
  end
end