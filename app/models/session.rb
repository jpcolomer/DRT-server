class Session < ActiveRecord::Base
  include Rhoconnect::Resource

  attr_accessible :token, :user_id
  belongs_to :user

  def partition
  	lambda { self.user.id }
  end

  def self.rhoconnect_query(partition)
  	logger.info(partition.inspect)
  	Session.includes(:user).where("users.id = ?",partition.to_i)
  end

end
