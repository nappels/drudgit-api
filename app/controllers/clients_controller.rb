class ClientsController < ApplicationController
  respond_to :json

  def index
    if params[:id]
      respond_with Client.find(params[:id])
    else
      respond_with Client.all
    end
      
  end

  def create
    @client = Client.new(safe_client_params)
    respond_with(@client) do |format|
      if @client.save
        flash[:notice] = "client was created successfully."
        format.html { redirect_to @client }
      else
        format.html { render :action => :new }
      end
    end
  end

  private

    def safe_client_params
      params.require(:client).permit(:name, :email, :phone_number, :notes)
    end

end
