class UserRolesController < ApplicationController
  def create
    role = UserRole.new(user_role_params)
    if role.save
      render json: role , status: :created, location: role
    else
      render json: role.errors, status: :unprocessable_entity
    end
  end

  def update
    role = UserRole.find(params[:id])
    if role.update(user_role_params)
      render json: role , status: :updated, location: role
    else
      render json: role.errors, status: :unprocessable_entity
    end
  end

  private

  def user_role_params
    params.permit(:role , :user_id)
  end
end
