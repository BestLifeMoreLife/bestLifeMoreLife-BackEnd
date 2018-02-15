class Api::V1::TracksController < ApplicationController

  def show
    @track = Track.all.find(params[:id])
    render json: @track
  end
end
