class CreateTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :teams do |t|
      t.integer :iso_code
      t.string :name
      t.boolean :national_team, default: false
      t.string :iso_alpha2
      t.string :iso_alpha3

      t.timestamps
    end
  end
end
