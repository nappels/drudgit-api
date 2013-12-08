class AddColumnsToClients < ActiveRecord::Migration
  def change
    add_column :clients, :email, :string
    add_column :clients, :phone_number, :string
    add_column :clients, :notes, :text
  end
end
