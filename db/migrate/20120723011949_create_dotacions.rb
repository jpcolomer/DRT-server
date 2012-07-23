class CreateDotacions < ActiveRecord::Migration
  def change
    create_table :dotacions do |t|
      t.integer :contrato_id
      t.datetime :fecha
      t.integer :empleados
      t.integer :recategorizacion
      t.integer :gestion_dotacional
      t.integer :nuevos_ingresos_egresos

      t.timestamps
    end
    add_index :dotacions, :contrato_id
  end
end
