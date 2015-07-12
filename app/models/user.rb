class User < ActiveRecord::Base

  def self.from_omniauth(auth)
    user = User.new
    user.fb_id   = auth.uid
    user.name  = auth.info.name
    user.email = auth.info.email
    user.icon  = auth.info.image
    user.oauth_token      = auth.credentials.token
    user.oauth_expires_at = Time.at(auth.credentials.expires_at)

    user
  end

end
