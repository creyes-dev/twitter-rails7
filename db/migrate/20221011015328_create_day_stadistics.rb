class CreateDayStadistics < ActiveRecord::Migration[7.0]
  def change
    create_table :day_stadistics do |t|
      t.datetime :day
      t.references :department, foreign_key: true
      t.integer :matches, default: 0
      t.references :competing_user, foreign_key: true
      t.integer :predictions, default: 0
      t.integer :success, default: 0
      t.decimal :success_perc, default: 0.0

      t.timestamps
    end
  end
end
