class Session < ActiveRecord::Base
  include Rhoconnect::Resource

  attr_accessible :token, :user_id
  belongs_to :user

  def partition
  	self.user.id
  end

  def self.rhoconnect_query(partition)
  	Session.includes(:user).where("users.id = ?",partition)
  end

end
