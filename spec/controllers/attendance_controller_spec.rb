require 'rails_helper'

RSpec.describe AttendancesController, type: :controller do
  let(:user) { FactoryBot.create(:user) }
  let(:attendance) { FactoryBot.create(:attendance, attendance: "p", date: "10 sep", user_id: user.id ) }

  describe "attendance#create" do
    it "creates a new attendance" do
      process :create, method: :post , params: {attendance: "p", date: "10 sep", user_id: user.id } 
      expect(Attendance.last.date).to eq("10 sep")
    end
  end

  describe "attendance#update" do
    it "updates attendance" do
      # user = FactoryBot.create(:user)
      process :update, method: :patch , params: {id: attendance.id, date: "11 sep"}
      user_role.reload
      expect(Attendance.last.date).to eq("11 sep")
    end  
  end

  describe "attendance#destroy" do
    it "deletes the attendance" do
      delete :destroy, params: { id: leave.id}
      expect(Attendance.exists?(attendance.id)).to be_falsey
    end
  end
end

