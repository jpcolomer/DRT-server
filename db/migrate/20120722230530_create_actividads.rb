class CreateActividads < ActiveRecord::Migration
  def change
    create_table :actividads do |t|
      t.string :nombre
      t.string :responsable
      t.integer :avance
      t.datetime :fecha_inicio
      t.datetime :fecha_termino

      t.timestamps
    end
  end
end
