class UsersController < ApplicationController
  before_filter :authenticate_user!
  respond_to :json

  def index
    respond_with current_user
  end

  def gravatar
    @gravatar = Gravatar.new(params[:email]).image_url
    respond_with imageUrl: @gravatar
  end
end