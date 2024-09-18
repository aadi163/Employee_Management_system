class EmployeeLeavesController < ApplicationController
  before_action :find_employee_leave, only: %i[destroy]

  def create
    employee_leave = EmployeeLeave.new(employee_leave_params)
    if employee_leave.save
      render json: employee_leave , status: :created, location: employee_leave
    else
      render json: employee_leave.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @employee_leave.destroy
      render json: @employee_leave , status: 200
    else
      render json: @employee_leave.errors, status: :unprocessable_entity
    end
  end

  private

  def employee_leave_params
    params.permit(:leave_id , :user_id)
  end

  def find_employee_leave
    @employee_leave = EmployeeLeave.find(params[:id])
  end
end
