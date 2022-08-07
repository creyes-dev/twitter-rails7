class CreateRounds < ActiveRecord::Migration[7.0]
  def change
    create_table :rounds do |t|
      t.references :competition, null: false, foreign_key: true
      t.integer :number

      t.timestamps
    end

    add_index :rounds, [:competition_id, :number], :unique => true
    add_index :rounds, :number
  end
end
