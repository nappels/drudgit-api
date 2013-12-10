class ClientsController < ApplicationController
  respond_to :json

  def index
    if params[:id]
      respond_with Client.find(params[:id])
    else
      respond_with User.find(current_user).clients
    end
  end

  def create
    @client = Client.new(safe_client_params)
    @client.user_id = current_user.id
    if @client.save   
      respond_with(@client, location: clients_url)
    end
  end

  private

    def safe_client_params
      params.require(:client).permit(:name, :email, :phone_number, :notes)
    end

end
