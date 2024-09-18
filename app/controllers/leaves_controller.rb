class LeavesController < ApplicationController
  before_action :find_leave, only: %i[update destroy ]
  before_action :current_user

  def index
    @leaves = Leave.all
    render json: @leaves, status: :ok
  end

  def create
    puts @current_user.name
    leave = Leave.new(user_leave_params)
    if leave.save
      render json: leave , status: :created, location: leave
    else
      render json: leave.errors, status: :unprocessable_entity
    end
  end

  def update
    if @leave.update(user_leave_params)
      render json: @leave 
    else
      render json: @leave.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @leave.destroy
      render json: @leave , status: 200
    else
      render json: @leave.errors, status: :unprocessable_entity
    end
  end

  private

  def user_leave_params
    params.permit(:from , :to , :days , :user_id)
  end

  def find_leave
    @leave = Leave.find(params[:id])
  end
end
