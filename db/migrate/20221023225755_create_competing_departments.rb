class CreateCompetingDepartments < ActiveRecord::Migration[7.0]
  def change
    create_table :competing_departments do |t|
      t.references :competition, null: false, foreign_key: true
      t.references :department, null: false, foreign_key: true
      t.integer :place, default: 0
      t.integer :score, default: 0
      t.integer :predictions, default: 0
      t.integer :success, default: 0

      t.timestamps
    end
  end
end
