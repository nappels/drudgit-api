class Client < ActiveRecord::Base
  belongs_to :user
  
  attr_accessible :name, :start_date, :end_date, :user_id, :created_at, :updated_at, :email, :notes, :phone_number

end
