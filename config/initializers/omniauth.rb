Rails.application.config.middleware.use OmniAuth::Builder do
  provider :ultraauth,
    ENV['OPENID_CLIENT_ID'],
    ENV['OPENID_CLIENT_SECRET'],
    client_options: {
      redirect_uri: "#{ENV['DOMAIN_URL']}/auth/ultraauth/callback"
    }
end
