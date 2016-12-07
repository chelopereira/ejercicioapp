class AddNombreToPeople < ActiveRecord::Migration[5.0]
  def change
  	add_column :people, :nombre, :string
  end
end
