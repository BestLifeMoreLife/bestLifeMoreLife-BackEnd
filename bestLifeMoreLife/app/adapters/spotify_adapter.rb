class SpotifyAdapter

  URLS = {
     auth:"https://accounts.spotify.com/api/token",
     me:"https://api.spotify.com/v1/me"
   }

   def self.body_params
   body = {
     client_id: "41e6d53b8d3d4b67949aa7b8212cb4d3",
     client_secret: "666cd2ecbd2c46feaa56ecdc09b2dd75"
   }
 end

 def self.refresh_access_token(refresh_token)
    body = body_params.dup
    body[:grant_type] = "refresh_token"
    body[:refresh_token] = refresh_token

    auth_params = authorize(body)
    auth_params["access_token"]
  end

  def self.login(code)
    body = body_params.dup
    body[:grant_type] = "authorization_code"
    body[:code] = code
    body[:redirect_uri] = "http://localhost:3000/api/v1/users/new"

    authorize(body)
  end

  def self.authorize(body)
    auth_response = RestClient.post("https://accounts.spotify.com/api/token", body)
    JSON.parse(auth_response.body)
  end

  def self.getUserData(access_token)

    header = {
      Authorization: "Bearer #{access_token}"
    }

    user_response = RestClient.get(URLS[:me], header)

    JSON.parse(user_response.body)
  end
end
