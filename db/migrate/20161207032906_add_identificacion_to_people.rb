class AddIdentificacionToPeople < ActiveRecord::Migration[5.0]
  def change
  	add_column :people, :identificacion, :string
  end
end
