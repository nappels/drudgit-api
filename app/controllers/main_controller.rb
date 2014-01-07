class MainController < ApplicationController

  # This method looks good, but the one thing suggestion I would make is to use a more descriptive controller name

  before_filter :authenticate_user!
  respond_to :json

  def session
    respond_with current_user
  end

end
