class AddFteColumnsToDotacion < ActiveRecord::Migration
  def change
  	change_table :dotacions do |t|
  		t.integer :recategorizacion_fte, :gestion_dotacional_fte, :nuevos_ingresos_egresos_fte, :null => false, :default => 0
  	end
  end
end
