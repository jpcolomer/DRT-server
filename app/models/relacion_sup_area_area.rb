class RelacionSupAreaArea < ActiveRecord::Base
	include Rhoconnect::Resource
  attr_accessible :area_id, :sup_area_id
  belongs_to :area
  belongs_to :sup_area

  def partition
  	'testuser'
  end

  def self.rhoconnect_query(partition)
  	RelacionSupAreaArea.all
  end
end
