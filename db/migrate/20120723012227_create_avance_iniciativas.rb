class CreateAvanceIniciativas < ActiveRecord::Migration
  def change
    create_table :avance_iniciativas do |t|
      t.integer :iniciativa_id
      t.datetime :fecha
      t.integer :valor

      t.timestamps
    end
    add_index :avance_iniciativas, :iniciativa_id
  end
end
