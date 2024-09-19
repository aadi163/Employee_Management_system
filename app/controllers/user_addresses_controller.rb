class UserAddressesController < ApplicationController
  before_action :find_address, only: %i[update destroy ]

  def create
    address = UserAddress.new(user_address_params)
    if address.save
      render json: address , status: :created, location: address
    else
      render json: address.errors, status: :unprocessable_entity
    end
  end

  def update
    if @address.update(user_address_params)
      render json: @address 
    else
      render json: @address.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @address.destroy
      render json: @address , status: 200
    else
      render json: @address.errors, status: :unprocessable_entity
    end
  end


  private

  def user_address_params
    params.permit(:address , :city , :state , :phone_no , :user_id)
  end

  def find_address
    @address = UserAddress.find(params[:id])
  end
end
