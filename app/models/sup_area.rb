class SupArea < ActiveRecord::Base
	include Rhoconnect::Resource
  attr_accessible :nombre
  has_many :relacion_sup_area_areas
  has_many :areas, :through => :relacion_sup_area_areas

  def partition
  	'testuser'
  end

  def self.rhoconnect_query(partition)
  	SupArea.all
  end
end
