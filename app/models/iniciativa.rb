class Iniciativa < ActiveRecord::Base
	include Rhoconnect::Resource
  attr_accessible :compromiso, :contrato_id, :fecha
  belongs_to :contrato
  has_many :avance_iniciativas

  def partition
  	'testuser'
  end

  def self.rhoconnect_query(partition)
  	Iniciativa.all
  end
end
