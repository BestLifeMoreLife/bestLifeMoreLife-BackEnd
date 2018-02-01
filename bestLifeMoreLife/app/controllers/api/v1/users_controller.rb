class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end
  def show
    byebug
    token = request.headers
    @user = User.all.find(params[:password])
    render json: @user
  end
  def create
    auth_params = SpotifyAdapter.login(params[:spotify_code])
    user_data = SpotifyAdapter.getUserData(auth_params["access_token"])
    user = User.find_or_create_by(user_params(user_data))
    user.update(access_token: issue_token({token: auth_params["access_token"]}), refresh_token: issue_token({token: auth_params["refresh_token"]}))
    track = user.track ? user.track.name : nil
    render json: {name: user.display_name, score: user.score, track: track, token: issue_token({token: user.username})}
  end
  def update

  end
  def destroy

  end

private

def user_params(user_data)
  params = {
    username: user_data["id"],
    display_name: user_data["display_name"],
  }
end
end
