require 'rails_helper'

RSpec.describe UserRolesController, type: :controller do
  let(:user) { FactoryBot.create(:user) }
  let(:user_role) { FactoryBot.create(:user_role, role:"employee" , profile: "R developer" , user_id: user.id ) }

  describe "Role#create" do
    it "creates a new user_role" do
      process :create, method: :post , params: {role: "employee" , profile: "ROR developer", user_id: user.id } 
      expect(UserRole.last.role).to eq("employee")
    end
  end

  describe "UserRoleController#update" do
    it "updates user_role" do
      # user = FactoryBot.create(:user)
      process :update, method: :patch , params: {id: user_role.id, profile: "React developer" }
      user_role.reload
      expect(UserRole.last.profile).to eq("React developer")
    end  
  end

  describe "Role#destroy" do
    it "deletes the user_role" do
      delete :destroy, params: { id: user_role.id}
      expect(UserRole.exists?(user_role.id)).to be_falsey
    end
  end
end

