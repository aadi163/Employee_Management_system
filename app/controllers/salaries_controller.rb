class SalariesController < ApplicationController

  def create
    salary = Salary.new(user_salary_params)
    if salary.save
      render json: salary , status: :created, location: salary
    else
      render json: salary.errors, status: :unprocessable_entity
    end
  end

  private

  def user_salary_params
    params.permit(:amount , :date)
  end
end
