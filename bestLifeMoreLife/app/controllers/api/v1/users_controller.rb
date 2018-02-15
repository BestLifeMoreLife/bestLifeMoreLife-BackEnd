class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end
  def show
    @user = User.all.find(params[:id])
    render json: @user
  end
  def create
    auth_params = SpotifyAdapter.login(params[:spotify_code])
    user_data = SpotifyAdapter.getUserData(auth_params["access_token"])
    user = User.find_or_create_by(user_params(user_data))
    user.update(access_token: issue_token({token: auth_params["access_token"]}), refresh_token: issue_token({token: auth_params["refresh_token"]}))
    render json: {user: UserSerializer.new(user), token: issue_token({token: user.username})}
  end
  def update
    user = User.find(params[:user][:id])
    user.update(score:params[:score])
    artist = user.match_with_artist
    user.track = Track.create(artist: artist)
    user.save
    track = Track.find_by(user: user)
    render json: {user: UserSerializer.new(user), token: issue_token({token: user.username})}
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
