class Api::V1::ArtistsController < ApplicationController

  def index
    @artists = Artist.all
    render json: @artists
  end
  def show
    @artist = Artist.all.find(params[:id])
    render json: @artist
  end
  def create
    @artist = Artist.create(artist_params)
    render json: @artist
  end
  def get_picture_and_quote
    artist = Artist.find(params[:id])
    score = params[:mood_score]
    adjusted_score = score > 5 ? 5 : score
    photo = artist.get_picture(adjusted_score)
    quote = Quote.matchQuote(adjusted_score)
    render json: {photo: photo, quote: quote}
  end

private

  def artist_params
    params.require(:artist).permit([:name, :score])
  end
end
