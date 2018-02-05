class Api::V1::JournalsController < ApplicationController

  def show
    journal = Journal.find(params[:id])
    render json: journal
  end
  def create
    journal = Journal.create(user_id: params[:user_id])
    render json: journal
  end
end
