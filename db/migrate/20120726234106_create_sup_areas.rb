class CreateSupAreas < ActiveRecord::Migration
  def change
    create_table :sup_areas do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
