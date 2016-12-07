class AddTowerIdToApartments < ActiveRecord::Migration[5.0]
  def change
  	add_column :apartments, :tower_id, :integer
  end
end
