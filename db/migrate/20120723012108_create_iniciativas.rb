class CreateIniciativas < ActiveRecord::Migration
  def change
    create_table :iniciativas do |t|
      t.integer :contrato_id
      t.datetime :fecha
      t.integer :compromiso

      t.timestamps
    end
    add_index :iniciativas, :contrato_id
  end
end
