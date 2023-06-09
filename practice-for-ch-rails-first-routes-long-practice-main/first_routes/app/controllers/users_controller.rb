# app/controllers/users_controller.rb

class UsersController < ApplicationController
  def index
    users = User.all
    render json: users


  end
  def create
    user = User.new(params_permit)
    if user.save
      render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end
  def show
    user = User.find(params[:id])
    render json: user
  end
  def update
    user = User.find(params[:id])
    user.update(params_permit)
    render json: user
  end
  def destroy
    user = User.find(params[:id])
    user.destroy
  end
  private
  def params_permit
    params.require(:user).permit(:name,:email)
  end
end
