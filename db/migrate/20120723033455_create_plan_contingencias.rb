class CreatePlanContingencias < ActiveRecord::Migration
  def change
    create_table :plan_contingencias do |t|
      t.integer :riesgo_id
      t.text :descripcion

      t.timestamps
    end
  end
end
