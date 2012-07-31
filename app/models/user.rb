class User < ActiveRecord::Base
  include Rhoconnect::Resource
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable, :validatable, :registerable and :omniauthable
  devise :database_authenticatable, :token_authenticatable,
         :recoverable, :rememberable, :trackable, :stretches => 13

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :authentication_token
  # attr_accessible :title, :body

  def self.authenticate(email, password)
  	user = User.find_by_email(email)
  	if user.nil?
  		return false
  	else
  		return user.valid_password?(password)
  	end
  end

  def partition
    lambda{ self.user.id }
  end

  def self.rhoconnect_query(partition)
    User.all
  end

end
