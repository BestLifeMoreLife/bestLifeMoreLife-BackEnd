class Api::V1::ArtistsController < ApplicationController

  def index
    @artists = Artist.all
    render json: @artist
  end
  def show
    @artist = Artist.all.find(params[:id])
    render json: @artist
  end
  def create
    @artist = Artist.create(artist_params)
    render json: @artist
  end
  def update

  end
  def destroy

  end

private

  def artist_params
    params.require(:artist).permit([:name, :score])
  end
end
