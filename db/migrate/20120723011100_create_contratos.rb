class CreateContratos < ActiveRecord::Migration
  def change
    create_table :contratos do |t|
      t.integer :empresa_id
      t.integer :area_id

      t.timestamps
    end
    add_index :contratos, [:empresa_id, :area_id]
  end
end
