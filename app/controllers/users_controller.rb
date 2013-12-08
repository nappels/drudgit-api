class UsersController < ApplicationController
  # before_filter :authenticate_user!
  respond_to :json
  def index
    respond_with current_user
  end
end