require 'rails_helper'

RSpec.describe UserAddressesController, type: :controller do
  let(:user) { FactoryBot.create(:user) }
  let(:user_address) { FactoryBot.create(:user_address, address:"redison" , city: "indore" , phone_no: "1212" , state: "mp", user_id: user.id ) }

  describe "address#create" do
    it "creates a new user_address" do
      process :create, method: :post , params: { address:"redison" , city: "indore" , phone_no: "1212" , state: "mp" , user_id: user.id }
      expect(UserAddress.last.city).to eq("indore")
    end
  end

  describe "UserAddressController#update" do
    it "updates user_address" do
      # user = FactoryBot.create(:user)
      process :update, method: :patch , params: {id: user_address.id, city: "Bhopal" }
      user_address.reload
      expect(UserAddress.last.city).to eq("Bhopal")
    end  
  end

  describe "address#destroy" do
    it "deletes the user_address" do
      delete :destroy, params: { id: user_address.id}
      expect(UserAddress.exists?(user_address.id)).to be_falsey
    end
  end
end
