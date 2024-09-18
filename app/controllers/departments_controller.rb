class DepartmentsController < ApplicationController
  before_action :find_department, only: %i[update destroy ]

  def create
    department = Department.new(user_department_params)
    if department.save
      render json: department , status: :created, location: department
    else
      render json: department.errors, status: :unprocessable_entity
    end
  end

  def update
    if @department.update(user_department_params)
      render json: @department 
    else
      render json: @department.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @department.destroy
      render json: @department , status: 200
    else
      render json: @department.errors, status: :unprocessable_entity
    end
  end

  private

  def user_department_params
    params.permit(:name)
  end

  def find_department
    @department = Department.find(params[:id])
  end
end
