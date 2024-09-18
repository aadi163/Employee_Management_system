class EmployeeAttendancesController < ApplicationController
  before_action :find_employee_leave, only: %i[destroy]

  def create
    employee_attendance = EmployeeAttendance.new(employee_attendance_params)
    if employee_attendance.save
      render json: employee_attendance , status: :created, location: employee_attendance
    else
      render json: employee_attendance.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @employee_attendance.destroy
      render json: @employee_attendance , status: 200
    else
      render json: @employee_attendance.errors, status: :unprocessable_entity
    end
  end

  private

  def employee_attendance_params
    params.permit(:attendance_id , :user_id)
  end

  def find_employee_attendance
    @employee_attendance = EmployeeAttendance.find(params[:id])
  end
end
