class AddLoopsToCompetition < ActiveRecord::Migration[7.0]
  def change
    add_column :competitions, :loops, :integer, null: false, default: 1
  end
end
