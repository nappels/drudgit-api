class ClientsController < ApplicationController
  respond_to :json

  def api
    respond_with Client.all
  end
end
