class CreateRelacionSupAreaAreas < ActiveRecord::Migration
  def change
    create_table :relacion_sup_area_areas do |t|
      t.integer :area_id
      t.integer :sup_area_id

      t.timestamps
    end
    add_index :relacion_sup_area_areas, :area_id
    add_index :relacion_sup_area_areas, :sup_area_id
  end
end
