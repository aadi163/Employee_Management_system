class UserRolesController < ApplicationController
  before_action :find_role, only: %i[update destroy ]

  def create
    role = UserRole.new(user_role_params)
    if role.save
      render json: role , status: :created, location: role
    else
      render json: role.errors, status: :unprocessable_entity
    end
  end

  def update
    if @role.update(user_role_params)
      render json: @role 
    else
      render json: @role.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @role.destroy
      render json: @role , status: 200
    else
      render json: @role.errors, status: :unprocessable_entity
    end
  end

  private

  def user_role_params
    params.permit(:role , :profile , :user_id)
  end

  def find_role
    @role = UserRole.find(params[:id])
  end
end
