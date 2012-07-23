class Actividad < ActiveRecord::Base
	include Rhoconnect::Resource
  attr_accessible :avance, :fecha_inicio, :fecha_termino, :nombre, :responsable

  def partition
  	'testuser'
  end

  def self.rhoconnect_query(partition)
  	Actividad.all
  end
end
