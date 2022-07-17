class CreateTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :teams do |t|
      t.integer :iso_code, null: false, index: { unique: true }
      t.string :name, null: false
      t.boolean :national_team, null: false, default: false
      t.string :iso_alpha2, null: false
      t.string :iso_alpha3, null: false

      t.timestamps
    end
  end
end
