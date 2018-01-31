class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end
  def show
    byebug
    @user = User.all.find(params[:id])
    render json: @user
  end
  def create
    @user = User.create(user_params)
    render json: @user
  end
  def update

  end
  def destroy

  end

private

  def user_params
    params.require(:user).permit([:username, :password, :email, :score])
  end
end
