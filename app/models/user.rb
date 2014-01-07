class User < ActiveRecord::Base
  
  has_many :clients
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Do you need attr_accessible, or can you do this with Rails 4 Strong Parameters?

  attr_accessible :email, :password, :password_confirmation, :id

  # Setup accessible (or protected) attributes for your model
  # attr_accessible :email, :password, :password_confirmation, :remember_me

end
