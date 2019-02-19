Rails.application.routes.draw do
  root to: 'home#index'
  get '/auth/ultraauth', as: 'omniauth_ultraauth'
  get '/auth/ultraauth/callback', to: 'sessions#create', as: :openid_auth_callback
end
