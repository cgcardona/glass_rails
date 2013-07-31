class GlassRails
  def self.get_user(access_token, signed_in_resource=nil)
    data = access_token.info
    user = User.where(:email => data['email']).first
    pass = Devise.friendly_token[0,20]
    unless user
      user = User.create(
        first_name: data['first_name'],
        last_name: data['last_name'],
        email: data['email'],
        profile_image: data['image'],
        has_received_welcome_card: false,
        password: pass,
        password_confirmation: pass
      )

      # This is a temp hack that is based on the fact that I must delete the app
      # on Google's [authorized access page](https://accounts.google.com/IssuedAuthSubTokens)  
      # in order to get a valid refresh token. 
      refresh_token = access_token.credentials.refresh_token ?  access_token.credentials.refresh_token : 'foobar'

      google_oauth = user.create_google_oauth(
        access_token:  access_token.credentials.token,
        refresh_token: refresh_token,
        token_expires_at: Time.at(access_token.credentials.expires_at)
      )
      
    end

    user
  end
end
