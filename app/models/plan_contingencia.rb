class PlanContingencia < ActiveRecord::Base
	include Rhoconnect::Resource
  attr_accessible :descripcion, :riesgo_id
  belongs_to :riesgo

  def partition
  	'testuser'
  end

  def self.rhoconnect_query(partition)
  	PlanContingencia.all
  end
end
