require 'rails_helper'

RSpec.describe LeavesController, type: :controller do
  let(:user) { FactoryBot.create(:user) }
  let(:leave) { FactoryBot.create(:leave, from:"2 sep " , to: "10 sep" , days: 5 , user_id: user.id ) }

  describe "leave#create" do
    it "creates a new leave" do
      process :create, method: :post , params: {from:"2 sep " , to: "10 sep" , days:5 , user_id: user.id  } 
      expect(Leave.last.days).to eq(5)
    end
  end

  describe "leave#update" do
    it "updates leave" do
      # user = FactoryBot.create(:user)
      process :update, method: :patch , params: {id: leave.id, days: 10}
      user_role.reload
      expect(Leave.last.days).to eq(10)
    end  
  end

  describe "leave#destroy" do
    it "deletes the leave" do
      delete :destroy, params: { id: leave.id}
      expect(Leave.exists?(leave.id)).to be_falsey
    end
  end
end

