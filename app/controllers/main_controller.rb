class MainController < ApplicationController
  before_filter :authenticate_user!
  responsd_to :json

  def session
    responsd_with current_user
  end
end