class CreateCountries < ActiveRecord::Migration[7.0]
  def change
    create_table :countries do |t|
      t.string :name
      t.string :iso_code
      t.string :iso_alpha2
      t.string :iso_alpha3

      t.timestamps
    end
  end
end
