class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable, :validatable, :registerable and :omniauthable

  devise :database_authenticatable, :token_authenticatable,
         :recoverable, :rememberable, :trackable, :stretches => 13

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :authentication_token
  # attr_accessible :title, :body
  has_one :session

  def self.authenticate(email, password)
  	user = User.find_by_email(email)
  	if user.nil?
  		return false
  	else
  		return user.valid_password?(password)
  	end
  end

end
