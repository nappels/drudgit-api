class ClientsController < ApplicationController
  respond_to :json

  def index
    respond_with Client.all
  end
end
