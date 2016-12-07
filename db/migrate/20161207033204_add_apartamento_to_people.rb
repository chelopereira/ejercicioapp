class AddApartamentoToPeople < ActiveRecord::Migration[5.0]
  def change
  	add_column :people, :apartamento, :string
  end
end
