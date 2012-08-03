class AddFteToDotacion < ActiveRecord::Migration
  def change
  	add_column :dotacions, :fte, :integer
  end
end
