class CreateCompetitionStructures < ActiveRecord::Migration[7.0]
  def change
    create_table :competition_structures do |t|
      t.string :description

      t.timestamps
    end
  end
end
