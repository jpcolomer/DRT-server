class AvanceIniciativa < ActiveRecord::Base
	include Rhoconnect::Resource
  attr_accessible :fecha, :iniciativa_id, :valor

  def partition
  	'testuser'
  end

  def self.rhoconnect_query(partition)
  	AvanceIniciativa.all
  end
end
