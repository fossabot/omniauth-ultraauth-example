class SessionsController < ApplicationController
  def create
    @response_hash = request.env['omniauth.auth'].to_hash
  end
end
