class SessionsController < ApplicationController

  # Request methods

  def sign_in
    user = find_by_gplus
    unless user
      user = user_from_params
      user.save
    end
    redirect_to_login(user)
  end

  def login
  end

  # Private methods

  private
  def redirect_to_login(user)
    redirect_to :login, notice: build_user_registered_message(user)
  end

  def build_user_registered_message(user)
    "User with name \"#{user.name}\", email \"#{user.email}\" and Google+ ID \"#{user.gplus}\" has been successfully registered!"
  end

  def user_from_params
    User.new(name: params[:name], gplus: params[:gplus] , email: params[:email])
  end

  def find_by_gplus
    User.find_by_gplus params[:gplus]
  end

end
