class Api::V1::PlaylistsController < ApplicationController


  def index
    playlist = Playlist.all
    render json: playlists
  end

  def get_playlist
    artist = Artist.find(params[:artist])
    user_score = params[:score]
    playlist = Playlist.findPlaylist(artist, user_score)
    render json: playlist
  end

end
