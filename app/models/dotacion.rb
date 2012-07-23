class Dotacion < ActiveRecord::Base
	include Rhoconnect::Resource
  attr_accessible :contrato_id, :empleados, :fecha, :gestion_dotacional, :nuevos_ingresos_egresos, :recategorizacion

  def partition
  	'testuser'
  end

  def self.rhoconnect_query(partition)
  	Dotacion.all
  end
end
