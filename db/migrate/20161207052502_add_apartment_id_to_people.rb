class AddApartmentIdToPeople < ActiveRecord::Migration[5.0]
  def change
  	add_column :people, :apartment_id, :integer
  end
end
