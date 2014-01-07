class UsersController < ApplicationController

  before_filter :authenticate_user!, except: :active 
  respond_to :json

  def index
    respond_with current_user
  end

  def active
    respond_with active: user_signed_in?
  end

  def gravatar
    @gravatar = Gravatar.new(params[:email]).image_url
    respond_with imageUrl: @gravatar  # Consider using snake_case here
  end

end
