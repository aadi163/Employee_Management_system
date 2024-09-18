class AttendancesController < ApplicationController
  before_action :find_attendance, only: %i[update destroy ]

  def create
    attendance = Attendance.new(user_attendance_params)
    if attendance.save
      render json: attendance , status: :created, location: attendance
    else
      render json: attendance.errors, status: :unprocessable_entity
    end
  end

  def update
    if @attendance.update(user_attendance_params)
      render json: @attendance 
    else
      render json: @attendance.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @attendance.destroy
      render json: @attendance , status: 200
    else
      render json: @attendance.errors, status: :unprocessable_entity
    end
  end

  private

  def user_attendance_params
    params.permit(:attendance, :date, :user_id)
  end

  def find_attendance
    @attendance = Attendance.find(params[:id])
  end
end
