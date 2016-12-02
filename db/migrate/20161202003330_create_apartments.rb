class CreateApartments < ActiveRecord::Migration[5.0]
  def change
    create_table :apartments do |t|
      t.string :nombre
      t.string :torre
      t.string :piso

      t.timestamps
    end
  end
end
