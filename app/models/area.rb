class Area < ActiveRecord::Base
	include Rhoconnect::Resource
  attr_accessible :compromiso_iniciativas, :compromiso_reduccion, :nombre
  has_many :contratos
  has_many :dotacions, :through => :contratos
  has_many :iniciativas
  has_many :avance_iniciativa, :through => :iniciativas

  def partition
  	'testuser'
  end

  def self.rhoconnect_query(partition)
  	Area.all
  end
end
