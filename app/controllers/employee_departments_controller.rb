class EmployeeDepartmentsController < ApplicationController
  before_action :find_employee_department, only: %i[destroy]

  def create
    employee_department = EmployeeDepartment.new(employee_department_params)
    if employee_department.save
      render json: employee_department , status: :created, location: employee_department
    else
      render json: employee_department.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @employee_department.destroy
      render json: @employee_department , status: 200
    else
      render json: @employee_department.errors, status: :unprocessable_entity
    end
  end

  private

  def employee_department_params
    params.permit(:department_id , :user_id)
  end

  def find_employee_department
    @employee_department = EmployeeDepartment.find(params[:id])
  end
end
