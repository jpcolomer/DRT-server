class Session < ActiveRecord::Base
  include Rhoconnect::Resource

  attr_accessible :token, :user_id
  belongs_to :user

  def partition
  	lambda { self.user.email }
  end

  def self.rhoconnect_query(partition)
  	logger.info("lalalala #{partition.inspect}")
  	Session.includes(:user).where("users.email = ?",partition)
  end

end
