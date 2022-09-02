class AddRoundToMatches < ActiveRecord::Migration[7.0]
  def change
    add_reference :matches, :round, null: false, foreign_key: true
  end
end
