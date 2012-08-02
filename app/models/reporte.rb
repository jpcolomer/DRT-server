class Reporte < ActiveRecord::Base
	include Rhoconnect::Resource
  attr_accessible :fecha, :file_name, :tipo, :url, :fecha, :fecha_actualizacion

  def get_tipo
  	unless tipo
  		return 'mensual'
  	else
  		return 'semanal'
  	end
  end

	def partition
		'testuser'
	end

	def self.rhoconnect_query(partition)
		Reporte.all
	end
end
