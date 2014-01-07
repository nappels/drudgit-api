class Client < ActiveRecord::Base
  
  belongs_to :user

  # Do you have a good reason to be using attr_accessible here?
  # This functionality was moved from the model layer to the controller layer in Rails 4
  # See "Rails 4 Strong Parameters" via Google
  
  attr_accessible :name, :start_date, :end_date, :user_id, :created_at, :updated_at, :email, :notes, :phone_number

end
