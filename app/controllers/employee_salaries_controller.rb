class EmployeeSalariesController < ApplicationController
  def create
    employee_salary = EmployeeSalary.new(employee_salary_params)
    if employee_salary.save
      render json: employee_salary , status: :created, location: employee_salary
    else
      render json: employee_salary.errors, status: :unprocessable_entity
    end
  end

  private

  def employee_salary_params
    params.permit(:salary_id , :user_id)
  end
end
