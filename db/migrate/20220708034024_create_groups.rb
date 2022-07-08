class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.references :competition, null: false, foreign_key: true
      t.string :name
      t.integer :rounds
      t.integer :playoff_round

      t.timestamps
    end
  end
end
