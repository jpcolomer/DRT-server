class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :nombre
      t.integer :compromiso_reduccion
      t.integer :compromiso_iniciativas

      t.timestamps
    end
  end
end
