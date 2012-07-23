class Contrato < ActiveRecord::Base
	include Rhoconnect::Resource
  attr_accessible :area_id, :empresa_id
  belongs_to :area
  belongs_to :empresa

  def partition
  	'testuser'
  end

  def self.rhoconnect_query(partition)
  	Contrato.all
  end
end
