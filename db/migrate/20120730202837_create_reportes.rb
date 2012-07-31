class CreateReportes < ActiveRecord::Migration
  def change
    create_table :reportes do |t|
      t.string :file_name
      t.boolean :tipo
      t.datetime :fecha
      t.datetime :fecha_actualizacion
      t.string :url

      t.timestamps
    end
    add_index :reportes, :file_name
  end
end
