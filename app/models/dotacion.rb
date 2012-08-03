class Dotacion < ActiveRecord::Base
	include Rhoconnect::Resource
  attr_accessible :contrato_id, :empleados, :fecha, :gestion_dotacional, :nuevos_ingresos_egresos, :recategorizacion
	attr_accessible	:gestion_dotacional_fte, :nuevos_ingresos_egresos_fte, :recategorizacion_fte, :fte
  def partition
  	'testuser'
  end

  def self.rhoconnect_query(partition)
  	Dotacion.all
  end
end
