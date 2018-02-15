class ApplicationController < ActionController::API

  def issue_token(payload)
    JWT.encode(payload, ENV["SECRET"], ENV["SECURITY_CODE"] )
  end

  def decode(jwt_token)
    algorithm = { algorithm: ENV["SECURITY_CODE"]}
    JWT.decode(jwt_token, ENV["SECRET"], true, algorithm)[0]
  end

end
