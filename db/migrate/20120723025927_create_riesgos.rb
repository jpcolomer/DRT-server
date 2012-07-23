class CreateRiesgos < ActiveRecord::Migration
  def change
    create_table :riesgos do |t|
      t.string :nemo
      t.integer :probabilidad
      t.integer :impacto
      t.text :descripcion

      t.timestamps
    end
  end
end
