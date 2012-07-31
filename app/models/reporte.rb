class Reporte < ActiveRecord::Base
  attr_accessible :fecha, :file_name, :tipo, :url

  def get_tipo
  	if tipo
  		return 'mensual'
  	else
  		return 'semanal'
  	end
  end
end
