class Api::V1::LoginsController < ApplicationController
  def create
    query_params = {
      client_id: "41e6d53b8d3d4b67949aa7b8212cb4d3",
      response_type: "code",
      redirect_uri: "http://localhost:3000/api/v1/users/new",
      scope: "user-library-read user-library-modify user-top-read user-modify-playback-state playlist-modify-public playlist-modify-private",
      show_dialog: true
    }

    url = "https://accounts.spotify.com/authorize"
    redirect_to "#{url}?#{query_params.to_query}"
  end


end
