class Riesgo < ActiveRecord::Base
	include Rhoconnect::Resource
  attr_accessible :descripcion, :impacto, :nemo, :probabilidad
  has_many :plan_contingencias

  def partition
  	'testuser'
  end

  def self.rhoconnect_query(partition)
  	Riesgo.all
  end
end
