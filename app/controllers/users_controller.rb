class UsersController < ApplicationController
  def show
  end

  def create
      auth_hash = request.env['omniauth.auth']
      raise
  end

  def logout
  end
end
