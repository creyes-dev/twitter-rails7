class AddBeginToCompetitions < ActiveRecord::Migration[7.0]
  def change
    add_column :competitions, :begin, :datetime
  end
end
