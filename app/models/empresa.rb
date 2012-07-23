class Empresa < ActiveRecord::Base
	include Rhoconnect::Resource
  attr_accessible :nombre, :responsable
  has_many :contratos
  has_many :dotacions, :through => :contratos
  has_many :iniciativas
  has_many :avance_iniciativas, :through => :iniciativas

  def partition
  	'testuser'
  end

  def self.rhoconnect_query(partition)
  	Empresa.all
  end
end
